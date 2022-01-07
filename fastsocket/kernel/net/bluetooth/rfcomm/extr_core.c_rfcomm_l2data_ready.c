
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;


 int BT_DBG (char*,struct sock*,int) ;
 int RFCOMM_SCHED_RX ;
 int rfcomm_schedule (int ) ;

__attribute__((used)) static void rfcomm_l2data_ready(struct sock *sk, int bytes)
{
 BT_DBG("%p bytes %d", sk, bytes);
 rfcomm_schedule(RFCOMM_SCHED_RX);
}
