
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct neighbour {int dev; } ;
struct TYPE_4__ {int ip; } ;
struct TYPE_3__ {int number; } ;


 TYPE_2__* NEIGH2ENTRY (struct neighbour*) ;
 TYPE_1__* PRIV (int ) ;
 int act_need ;
 int pr_debug (char*,struct neighbour*,struct sk_buff*) ;
 int to_atmarpd (int ,int ,int ) ;

__attribute__((used)) static void clip_neigh_solicit(struct neighbour *neigh, struct sk_buff *skb)
{
 pr_debug("clip_neigh_solicit (neigh %p, skb %p)\n", neigh, skb);
 to_atmarpd(act_need, PRIV(neigh->dev)->number, NEIGH2ENTRY(neigh)->ip);
}
