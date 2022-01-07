
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;


 int __ip6_local_out (struct sk_buff*) ;
 int dst_output (struct sk_buff*) ;
 scalar_t__ likely (int) ;

int ip6_local_out(struct sk_buff *skb)
{
 int err;

 err = __ip6_local_out(skb);
 if (likely(err == 1))
  err = dst_output(skb);

 return err;
}
