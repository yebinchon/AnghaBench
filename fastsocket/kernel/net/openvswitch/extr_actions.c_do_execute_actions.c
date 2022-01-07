
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct nlattr {int dummy; } ;
struct datapath {int dummy; } ;


 int GFP_ATOMIC ;






 int consume_skb (struct sk_buff*) ;
 int do_output (struct datapath*,struct sk_buff*,int) ;
 int execute_set_action (struct sk_buff*,int ) ;
 int kfree_skb (struct sk_buff*) ;
 int nla_data (struct nlattr const*) ;
 int nla_get_u32 (struct nlattr const*) ;
 struct nlattr* nla_next (struct nlattr const*,int*) ;
 int nla_type (struct nlattr const*) ;
 int output_userspace (struct datapath*,struct sk_buff*,struct nlattr const*) ;
 int pop_vlan (struct sk_buff*) ;
 int push_vlan (struct sk_buff*,int ) ;
 int sample (struct datapath*,struct sk_buff*,struct nlattr const*) ;
 struct sk_buff* skb_clone (struct sk_buff*,int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int do_execute_actions(struct datapath *dp, struct sk_buff *skb,
   const struct nlattr *attr, int len, bool keep_skb)
{




 int prev_port = -1;
 const struct nlattr *a;
 int rem;

 for (a = attr, rem = len; rem > 0;
      a = nla_next(a, &rem)) {
  int err = 0;

  if (prev_port != -1) {
   do_output(dp, skb_clone(skb, GFP_ATOMIC), prev_port);
   prev_port = -1;
  }

  switch (nla_type(a)) {
  case 133:
   prev_port = nla_get_u32(a);
   break;

  case 128:
   output_userspace(dp, skb, a);
   break;

  case 131:
   err = push_vlan(skb, nla_data(a));
   if (unlikely(err))
    return err;
   break;

  case 132:
   err = pop_vlan(skb);
   break;

  case 129:
   err = execute_set_action(skb, nla_data(a));
   break;

  case 130:
   err = sample(dp, skb, a);
   break;
  }

  if (unlikely(err)) {
   kfree_skb(skb);
   return err;
  }
 }

 if (prev_port != -1) {
  if (keep_skb)
   skb = skb_clone(skb, GFP_ATOMIC);

  do_output(dp, skb, prev_port);
 } else if (!keep_skb)
  consume_skb(skb);

 return 0;
}
