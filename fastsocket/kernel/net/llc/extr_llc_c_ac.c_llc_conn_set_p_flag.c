
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct sock {int (* sk_state_change ) (struct sock*) ;} ;
struct TYPE_2__ {scalar_t__ p_flag; } ;


 TYPE_1__* llc_sk (struct sock*) ;
 int stub1 (struct sock*) ;

void llc_conn_set_p_flag(struct sock *sk, u8 value)
{
 int state_changed = llc_sk(sk)->p_flag && !value;

 llc_sk(sk)->p_flag = value;

 if (state_changed)
  sk->sk_state_change(sk);
}
