
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct rds_sock {int rs_snd_bytes; int rs_lock; int rs_send_queue; } ;
struct TYPE_4__ {int h_sequence; int h_len; } ;
struct TYPE_3__ {TYPE_2__ i_hdr; struct rds_connection* i_conn; } ;
struct rds_message {TYPE_1__ m_inc; int m_flags; int m_conn_item; struct rds_sock* m_rs; int m_sock_item; } ;
struct rds_connection {int c_lock; int c_send_queue; int c_next_tx_seq; } ;
typedef int __be16 ;


 int RDS_MSG_ACK_REQUIRED ;
 int RDS_MSG_ON_CONN ;
 int RDS_MSG_ON_SOCK ;
 int __set_bit (int ,int *) ;
 int be32_to_cpu (int ) ;
 scalar_t__ be64_to_cpu (int ) ;
 int cpu_to_be64 (int ) ;
 int list_add_tail (int *,int *) ;
 int rds_message_addref (struct rds_message*) ;
 int rds_message_populate_header (TYPE_2__*,int ,int ,int ) ;
 int rds_sk_sndbuf (struct rds_sock*) ;
 int rdsdebug (char*,struct rds_message*,int,struct rds_sock*,int,unsigned long long) ;
 int set_bit (int ,int *) ;
 int spin_lock (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock (int *) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int rds_send_queue_rm(struct rds_sock *rs, struct rds_connection *conn,
        struct rds_message *rm, __be16 sport,
        __be16 dport, int *queued)
{
 unsigned long flags;
 u32 len;

 if (*queued)
  goto out;

 len = be32_to_cpu(rm->m_inc.i_hdr.h_len);



 spin_lock_irqsave(&rs->rs_lock, flags);
 if (rs->rs_snd_bytes < rds_sk_sndbuf(rs)) {
  rs->rs_snd_bytes += len;






  if (rs->rs_snd_bytes >= rds_sk_sndbuf(rs) / 2)
   __set_bit(RDS_MSG_ACK_REQUIRED, &rm->m_flags);

  list_add_tail(&rm->m_sock_item, &rs->rs_send_queue);
  set_bit(RDS_MSG_ON_SOCK, &rm->m_flags);
  rds_message_addref(rm);
  rm->m_rs = rs;



  rds_message_populate_header(&rm->m_inc.i_hdr, sport, dport, 0);
  rm->m_inc.i_conn = conn;
  rds_message_addref(rm);

  spin_lock(&conn->c_lock);
  rm->m_inc.i_hdr.h_sequence = cpu_to_be64(conn->c_next_tx_seq++);
  list_add_tail(&rm->m_conn_item, &conn->c_send_queue);
  set_bit(RDS_MSG_ON_CONN, &rm->m_flags);
  spin_unlock(&conn->c_lock);

  rdsdebug("queued msg %p len %d, rs %p bytes %d seq %llu\n",
    rm, len, rs, rs->rs_snd_bytes,
    (unsigned long long)be64_to_cpu(rm->m_inc.i_hdr.h_sequence));

  *queued = 1;
 }

 spin_unlock_irqrestore(&rs->rs_lock, flags);
out:
 return *queued;
}
