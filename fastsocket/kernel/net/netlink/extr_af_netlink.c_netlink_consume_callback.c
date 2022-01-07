
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netlink_callback {int skb; } ;


 int consume_skb (int ) ;
 int kfree (struct netlink_callback*) ;

__attribute__((used)) static void netlink_consume_callback(struct netlink_callback *cb)
{
 consume_skb(cb->skb);
 kfree(cb);
}
