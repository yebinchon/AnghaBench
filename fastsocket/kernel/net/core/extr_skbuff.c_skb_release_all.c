
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;


 int skb_release_data (struct sk_buff*) ;
 int skb_release_head_state (struct sk_buff*) ;

__attribute__((used)) static void skb_release_all(struct sk_buff *skb)
{
 skb_release_head_state(skb);
 skb_release_data(skb);
}
