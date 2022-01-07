
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int sk_state; } ;


 int BT_DBG (char*,struct sock*,int ) ;
 int RFCOMM_SCHED_STATE ;
 int rfcomm_schedule (int ) ;

__attribute__((used)) static void rfcomm_l2state_change(struct sock *sk)
{
 BT_DBG("%p state %d", sk, sk->sk_state);
 rfcomm_schedule(RFCOMM_SCHED_STATE);
}
