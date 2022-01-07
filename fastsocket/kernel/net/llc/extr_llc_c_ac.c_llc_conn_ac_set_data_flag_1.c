
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct TYPE_2__ {int data_flag; } ;


 TYPE_1__* llc_sk (struct sock*) ;

int llc_conn_ac_set_data_flag_1(struct sock *sk, struct sk_buff *skb)
{
 llc_sk(sk)->data_flag = 1;
 return 0;
}
