
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct llc_sock {int dec_cntr; int inc_cntr; scalar_t__ npta; int dec_step; scalar_t__ remote_busy_flag; } ;


 struct llc_sock* llc_sk (struct sock*) ;

int llc_conn_ac_adjust_npta_by_rnr(struct sock *sk, struct sk_buff *skb)
{
 struct llc_sock *llc = llc_sk(sk);

 if (llc->remote_busy_flag)
  if (!llc->dec_step) {
   if (!llc->dec_cntr) {
    llc->inc_cntr = llc->dec_cntr = 2;
    if (llc->npta > 0)
     --llc->npta;
   } else
    --llc->dec_cntr;
  }
 return 0;
}
