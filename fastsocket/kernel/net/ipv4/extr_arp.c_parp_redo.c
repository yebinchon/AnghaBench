
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;


 int arp_process (struct sk_buff*) ;

__attribute__((used)) static void parp_redo(struct sk_buff *skb)
{
 arp_process(skb);
}
