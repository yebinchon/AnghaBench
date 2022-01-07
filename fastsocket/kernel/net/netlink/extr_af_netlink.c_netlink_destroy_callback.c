
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netlink_callback {int skb; } ;


 int kfree (struct netlink_callback*) ;
 int kfree_skb (int ) ;

__attribute__((used)) static void netlink_destroy_callback(struct netlink_callback *cb)
{
 kfree_skb(cb->skb);
 kfree(cb);
}
