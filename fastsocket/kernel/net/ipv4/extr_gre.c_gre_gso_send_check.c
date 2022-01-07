
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int encapsulation; } ;


 int EINVAL ;

__attribute__((used)) static int gre_gso_send_check(struct sk_buff *skb)
{
 if (!skb->encapsulation)
  return -EINVAL;
 return 0;
}
