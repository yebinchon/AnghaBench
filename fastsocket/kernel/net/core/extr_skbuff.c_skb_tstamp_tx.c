
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ee_origin; int ee_errno; } ;
struct sock_exterr_skb {TYPE_1__ ee; } ;
struct sock {int dummy; } ;
struct skb_shared_hwtstamps {int dummy; } ;
struct sk_buff {int tstamp; struct sock* sk; } ;


 int ENOMSG ;
 int GFP_ATOMIC ;
 struct sock_exterr_skb* SKB_EXT_ERR (struct sk_buff*) ;
 int SO_EE_ORIGIN_TIMESTAMPING ;
 int kfree_skb (struct sk_buff*) ;
 int ktime_get_real () ;
 int memset (struct sock_exterr_skb*,int ,int) ;
 struct sk_buff* skb_clone (struct sk_buff*,int ) ;
 struct skb_shared_hwtstamps* skb_hwtstamps (struct sk_buff*) ;
 int sock_queue_err_skb (struct sock*,struct sk_buff*) ;

void skb_tstamp_tx(struct sk_buff *orig_skb,
  struct skb_shared_hwtstamps *hwtstamps)
{
 struct sock *sk = orig_skb->sk;
 struct sock_exterr_skb *serr;
 struct sk_buff *skb;
 int err;

 if (!sk)
  return;

 skb = skb_clone(orig_skb, GFP_ATOMIC);
 if (!skb)
  return;

 if (hwtstamps) {
  *skb_hwtstamps(skb) =
   *hwtstamps;
 } else {





  skb->tstamp = ktime_get_real();
 }

 serr = SKB_EXT_ERR(skb);
 memset(serr, 0, sizeof(*serr));
 serr->ee.ee_errno = ENOMSG;
 serr->ee.ee_origin = SO_EE_ORIGIN_TIMESTAMPING;
 err = sock_queue_err_skb(sk, skb);
 if (err)
  kfree_skb(skb);
}
