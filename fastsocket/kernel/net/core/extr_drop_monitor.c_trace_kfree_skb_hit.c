
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;


 int trace_drop_common (struct sk_buff*,void*) ;

__attribute__((used)) static void trace_kfree_skb_hit(struct sk_buff *skb, void *location)
{
 trace_drop_common(skb, location);
}
