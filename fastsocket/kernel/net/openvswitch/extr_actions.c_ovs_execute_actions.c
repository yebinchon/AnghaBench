
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sw_flow_actions {int actions_len; int actions; } ;
struct sk_buff {int dummy; } ;
struct datapath {int dummy; } ;
struct TYPE_4__ {int * tun_key; TYPE_1__* flow; } ;
struct TYPE_3__ {int sf_acts; } ;


 TYPE_2__* OVS_CB (struct sk_buff*) ;
 int do_execute_actions (struct datapath*,struct sk_buff*,int ,int ,int) ;
 struct sw_flow_actions* rcu_dereference (int ) ;

int ovs_execute_actions(struct datapath *dp, struct sk_buff *skb)
{
 struct sw_flow_actions *acts = rcu_dereference(OVS_CB(skb)->flow->sf_acts);

 OVS_CB(skb)->tun_key = ((void*)0);
 return do_execute_actions(dp, skb, acts->actions,
      acts->actions_len, 0);
}
