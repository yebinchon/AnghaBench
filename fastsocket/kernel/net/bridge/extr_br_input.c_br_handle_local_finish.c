
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {TYPE_1__* dev; } ;
struct net_bridge_port {int br; } ;
struct TYPE_4__ {int h_source; } ;
struct TYPE_3__ {int br_port; } ;


 int br_fdb_update (int ,struct net_bridge_port*,int ) ;
 TYPE_2__* eth_hdr (struct sk_buff*) ;
 struct net_bridge_port* rcu_dereference (int ) ;

__attribute__((used)) static int br_handle_local_finish(struct sk_buff *skb)
{
 struct net_bridge_port *p = rcu_dereference(skb->dev->br_port);

 if (p)
  br_fdb_update(p->br, p, eth_hdr(skb)->h_source);
 return 0;
}
