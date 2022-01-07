
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rds_iw_connection {int i_ack_flags; } ;


 int IB_ACK_IN_FLIGHT ;
 int clear_bit (int ,int *) ;
 int rds_iw_attempt_ack (struct rds_iw_connection*) ;

void rds_iw_ack_send_complete(struct rds_iw_connection *ic)
{
 clear_bit(IB_ACK_IN_FLIGHT, &ic->i_ack_flags);
 rds_iw_attempt_ack(ic);
}
