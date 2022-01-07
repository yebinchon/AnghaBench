
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rds_iw_connection {int i_credits; } ;
struct rds_connection {int c_send_w; int c_flags; struct rds_iw_connection* c_transport_data; } ;


 int IB_GET_SEND_CREDITS (unsigned int) ;
 int IB_SET_SEND_CREDITS (unsigned int) ;
 int RDS_LL_SEND_FULL ;
 int WARN_ON (int) ;
 int atomic_add (int ,int *) ;
 unsigned int atomic_read (int *) ;
 int queue_delayed_work (int ,int *,int ) ;
 int rds_iw_stats_inc (int ) ;
 int rds_wq ;
 int rdsdebug (char*,unsigned int,int,char*) ;
 int s_iw_rx_credit_updates ;
 scalar_t__ test_and_clear_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;

void rds_iw_send_add_credits(struct rds_connection *conn, unsigned int credits)
{
 struct rds_iw_connection *ic = conn->c_transport_data;

 if (credits == 0)
  return;

 rdsdebug("rds_iw_send_add_credits(%u): current=%u%s\n",
   credits,
   IB_GET_SEND_CREDITS(atomic_read(&ic->i_credits)),
   test_bit(RDS_LL_SEND_FULL, &conn->c_flags) ? ", ll_send_full" : "");

 atomic_add(IB_SET_SEND_CREDITS(credits), &ic->i_credits);
 if (test_and_clear_bit(RDS_LL_SEND_FULL, &conn->c_flags))
  queue_delayed_work(rds_wq, &conn->c_send_w, 0);

 WARN_ON(IB_GET_SEND_CREDITS(credits) >= 16384);

 rds_iw_stats_inc(s_iw_rx_credit_updates);
}
