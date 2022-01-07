
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {int dummy; } ;
struct rds_sock {int rs_recv_lock; int rs_recv_queue; } ;
struct TYPE_2__ {scalar_t__ h_sport; scalar_t__ h_dport; int h_flags; int h_len; int h_sequence; } ;
struct rds_incoming {int i_item; TYPE_1__ i_hdr; struct rds_connection* i_conn; int i_rx_jiffies; } ;
struct rds_connection {scalar_t__ c_next_rx_seq; int c_lcong; } ;
typedef int gfp_t ;
typedef enum km_type { ____Placeholder_km_type } km_type ;
typedef int __be32 ;


 int RDS_FLAG_RETRANSMITTED ;
 int SOCK_DEAD ;
 int __rds_wake_sk_sleep (struct sock*) ;
 int be16_to_cpu (scalar_t__) ;
 int be32_to_cpu (int ) ;
 scalar_t__ be64_to_cpu (int ) ;
 int jiffies ;
 int list_add_tail (int *,int *) ;
 struct rds_sock* rds_find_bound (int ,scalar_t__) ;
 int rds_inc_addref (struct rds_incoming*) ;
 int rds_recv_incoming_exthdrs (struct rds_incoming*,struct rds_sock*) ;
 int rds_recv_rcvbuf_delta (struct rds_sock*,struct sock*,int ,int ,scalar_t__) ;
 struct sock* rds_rs_to_sk (struct rds_sock*) ;
 int rds_send_pong (struct rds_connection*,scalar_t__) ;
 int rds_sock_put (struct rds_sock*) ;
 int rds_stats_inc (int ) ;
 scalar_t__ rds_sysctl_ping_enable ;
 int rdsdebug (char*,...) ;
 int s_recv_drop_dead_sock ;
 int s_recv_drop_no_sock ;
 int s_recv_drop_old_seq ;
 int s_recv_ping ;
 int s_recv_queued ;
 int sock_flag (struct sock*,int ) ;
 int write_lock_irqsave (int *,unsigned long) ;
 int write_unlock_irqrestore (int *,unsigned long) ;

void rds_recv_incoming(struct rds_connection *conn, __be32 saddr, __be32 daddr,
         struct rds_incoming *inc, gfp_t gfp, enum km_type km)
{
 struct rds_sock *rs = ((void*)0);
 struct sock *sk;
 unsigned long flags;

 inc->i_conn = conn;
 inc->i_rx_jiffies = jiffies;

 rdsdebug("conn %p next %llu inc %p seq %llu len %u sport %u dport %u "
   "flags 0x%x rx_jiffies %lu\n", conn,
   (unsigned long long)conn->c_next_rx_seq,
   inc,
   (unsigned long long)be64_to_cpu(inc->i_hdr.h_sequence),
   be32_to_cpu(inc->i_hdr.h_len),
   be16_to_cpu(inc->i_hdr.h_sport),
   be16_to_cpu(inc->i_hdr.h_dport),
   inc->i_hdr.h_flags,
   inc->i_rx_jiffies);
 if (be64_to_cpu(inc->i_hdr.h_sequence) < conn->c_next_rx_seq
  && (inc->i_hdr.h_flags & RDS_FLAG_RETRANSMITTED)) {
  rds_stats_inc(s_recv_drop_old_seq);
  goto out;
 }
 conn->c_next_rx_seq = be64_to_cpu(inc->i_hdr.h_sequence) + 1;

 if (rds_sysctl_ping_enable && inc->i_hdr.h_dport == 0) {
  rds_stats_inc(s_recv_ping);
  rds_send_pong(conn, inc->i_hdr.h_sport);
  goto out;
 }

 rs = rds_find_bound(daddr, inc->i_hdr.h_dport);
 if (!rs) {
  rds_stats_inc(s_recv_drop_no_sock);
  goto out;
 }


 rds_recv_incoming_exthdrs(inc, rs);


 sk = rds_rs_to_sk(rs);


 write_lock_irqsave(&rs->rs_recv_lock, flags);
 if (!sock_flag(sk, SOCK_DEAD)) {
  rdsdebug("adding inc %p to rs %p's recv queue\n", inc, rs);
  rds_stats_inc(s_recv_queued);
  rds_recv_rcvbuf_delta(rs, sk, inc->i_conn->c_lcong,
          be32_to_cpu(inc->i_hdr.h_len),
          inc->i_hdr.h_dport);
  rds_inc_addref(inc);
  list_add_tail(&inc->i_item, &rs->rs_recv_queue);
  __rds_wake_sk_sleep(sk);
 } else {
  rds_stats_inc(s_recv_drop_dead_sock);
 }
 write_unlock_irqrestore(&rs->rs_recv_lock, flags);

out:
 if (rs)
  rds_sock_put(rs);
}
