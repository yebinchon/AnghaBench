
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tc_action {TYPE_1__* ops; } ;
struct sk_buff {int dummy; } ;
struct TYPE_2__ {int (* dump ) (struct sk_buff*,struct tc_action*,int,int) ;} ;


 int EINVAL ;
 int stub1 (struct sk_buff*,struct tc_action*,int,int) ;

int
tcf_action_dump_old(struct sk_buff *skb, struct tc_action *a, int bind, int ref)
{
 int err = -EINVAL;

 if (a->ops == ((void*)0) || a->ops->dump == ((void*)0))
  return err;
 return a->ops->dump(skb, a, bind, ref);
}
