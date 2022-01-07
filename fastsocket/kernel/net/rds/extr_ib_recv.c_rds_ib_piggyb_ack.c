
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct rds_ib_connection {int i_ack_flags; } ;


 int IB_ACK_REQUESTED ;
 int rds_ib_get_ack (struct rds_ib_connection*) ;
 int rds_ib_stats_inc (int ) ;
 int s_ib_ack_send_piggybacked ;
 scalar_t__ test_and_clear_bit (int ,int *) ;

u64 rds_ib_piggyb_ack(struct rds_ib_connection *ic)
{
 if (test_and_clear_bit(IB_ACK_REQUESTED, &ic->i_ack_flags))
  rds_ib_stats_inc(s_ib_ack_send_piggybacked);
 return rds_ib_get_ack(ic);
}
