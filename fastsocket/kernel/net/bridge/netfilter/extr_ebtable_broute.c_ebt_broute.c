
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {int dev; } ;
struct TYPE_3__ {int broute_table; } ;
struct TYPE_4__ {TYPE_1__ xt; } ;


 int NF_BR_BROUTING ;
 int NF_DROP ;
 TYPE_2__* dev_net (int ) ;
 int ebt_do_table (int ,struct sk_buff*,int ,int *,int ) ;

__attribute__((used)) static int ebt_broute(struct sk_buff *skb)
{
 int ret;

 ret = ebt_do_table(NF_BR_BROUTING, skb, skb->dev, ((void*)0),
      dev_net(skb->dev)->xt.broute_table);
 if (ret == NF_DROP)
  return 1;
 return 0;
}
