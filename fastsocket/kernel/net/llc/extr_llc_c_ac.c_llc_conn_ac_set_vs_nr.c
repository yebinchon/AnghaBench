
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct TYPE_2__ {int last_nr; int vS; } ;


 TYPE_1__* llc_sk (struct sock*) ;

int llc_conn_ac_set_vs_nr(struct sock *sk, struct sk_buff *skb)
{
 llc_sk(sk)->vS = llc_sk(sk)->last_nr;
 return 0;
}
