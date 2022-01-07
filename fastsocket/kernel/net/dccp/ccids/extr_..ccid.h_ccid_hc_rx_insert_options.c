
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct ccid {TYPE_1__* ccid_ops; } ;
struct TYPE_2__ {int (* ccid_hc_rx_insert_options ) (struct sock*,struct sk_buff*) ;} ;


 int stub1 (struct sock*,struct sk_buff*) ;

__attribute__((used)) static inline int ccid_hc_rx_insert_options(struct ccid *ccid, struct sock *sk,
         struct sk_buff *skb)
{
 if (ccid->ccid_ops->ccid_hc_rx_insert_options != ((void*)0))
  return ccid->ccid_ops->ccid_hc_rx_insert_options(sk, skb);
 return 0;
}
