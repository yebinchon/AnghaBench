
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct TYPE_2__ {scalar_t__ ack_pf; scalar_t__ ack_must_be_send; } ;


 TYPE_1__* llc_sk (struct sock*) ;

int llc_conn_ac_rst_sendack_flag(struct sock *sk, struct sk_buff *skb)
{
 llc_sk(sk)->ack_must_be_send = llc_sk(sk)->ack_pf = 0;
 return 0;
}
