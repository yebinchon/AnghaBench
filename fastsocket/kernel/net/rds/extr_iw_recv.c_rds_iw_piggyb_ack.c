
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct rds_iw_connection {int i_ack_flags; } ;


 int IB_ACK_REQUESTED ;
 int rds_iw_get_ack (struct rds_iw_connection*) ;
 int rds_iw_stats_inc (int ) ;
 int s_iw_ack_send_piggybacked ;
 scalar_t__ test_and_clear_bit (int ,int *) ;

u64 rds_iw_piggyb_ack(struct rds_iw_connection *ic)
{
 if (test_and_clear_bit(IB_ACK_REQUESTED, &ic->i_ack_flags))
  rds_iw_stats_inc(s_iw_ack_send_piggybacked);
 return rds_iw_get_ack(ic);
}
