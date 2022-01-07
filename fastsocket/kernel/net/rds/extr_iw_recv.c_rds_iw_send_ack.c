
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct rds_iw_connection {int conn; int i_ack_flags; int i_ack_wr; TYPE_1__* i_cm_id; int i_ack_queued; struct rds_header* i_ack; } ;
struct rds_header {unsigned int h_credit; int h_ack; } ;
struct ib_send_wr {int dummy; } ;
struct TYPE_2__ {int qp; } ;


 int IB_ACK_IN_FLIGHT ;
 int IB_ACK_REQUESTED ;
 int clear_bit (int ,int *) ;
 int cpu_to_be64 (scalar_t__) ;
 int ib_post_send (int ,int *,struct ib_send_wr**) ;
 int jiffies ;
 int rds_iw_conn_error (int ,char*) ;
 scalar_t__ rds_iw_get_ack (struct rds_iw_connection*) ;
 int rds_iw_stats_inc (int ) ;
 int rds_message_make_checksum (struct rds_header*) ;
 int rds_message_populate_header (struct rds_header*,int ,int ,int ) ;
 int rdsdebug (char*,struct rds_iw_connection*,unsigned long long) ;
 int s_iw_ack_send_failure ;
 int s_iw_ack_sent ;
 int set_bit (int ,int *) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void rds_iw_send_ack(struct rds_iw_connection *ic, unsigned int adv_credits)
{
 struct rds_header *hdr = ic->i_ack;
 struct ib_send_wr *failed_wr;
 u64 seq;
 int ret;

 seq = rds_iw_get_ack(ic);

 rdsdebug("send_ack: ic %p ack %llu\n", ic, (unsigned long long) seq);
 rds_message_populate_header(hdr, 0, 0, 0);
 hdr->h_ack = cpu_to_be64(seq);
 hdr->h_credit = adv_credits;
 rds_message_make_checksum(hdr);
 ic->i_ack_queued = jiffies;

 ret = ib_post_send(ic->i_cm_id->qp, &ic->i_ack_wr, &failed_wr);
 if (unlikely(ret)) {



  clear_bit(IB_ACK_IN_FLIGHT, &ic->i_ack_flags);
  set_bit(IB_ACK_REQUESTED, &ic->i_ack_flags);

  rds_iw_stats_inc(s_iw_ack_send_failure);

  rds_iw_conn_error(ic->conn, "sending ack failed\n");
 } else
  rds_iw_stats_inc(s_iw_ack_sent);
}
