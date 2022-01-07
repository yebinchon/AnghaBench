
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct tc_action {TYPE_1__* ops; } ;
struct nlmsghdr {int dummy; } ;
struct nlattr {int dummy; } ;
typedef int index ;
struct TYPE_2__ {scalar_t__ (* lookup ) (struct tc_action*,int) ;int owner; } ;


 int EINVAL ;
 int ENOENT ;
 int ENOMEM ;
 struct tc_action* ERR_PTR (int) ;
 int GFP_KERNEL ;
 size_t TCA_ACT_INDEX ;
 size_t TCA_ACT_KIND ;
 int TCA_ACT_MAX ;
 int kfree (struct tc_action*) ;
 struct tc_action* kzalloc (int,int ) ;
 int module_put (int ) ;
 int nla_get_u32 (struct nlattr*) ;
 int nla_len (struct nlattr*) ;
 int nla_parse_nested (struct nlattr**,int ,struct nlattr*,int *) ;
 scalar_t__ stub1 (struct tc_action*,int) ;
 TYPE_1__* tc_lookup_action (struct nlattr*) ;

__attribute__((used)) static struct tc_action *
tcf_action_get_1(struct nlattr *nla, struct nlmsghdr *n, u32 pid)
{
 struct nlattr *tb[TCA_ACT_MAX+1];
 struct tc_action *a;
 int index;
 int err;

 err = nla_parse_nested(tb, TCA_ACT_MAX, nla, ((void*)0));
 if (err < 0)
  goto err_out;

 err = -EINVAL;
 if (tb[TCA_ACT_INDEX] == ((void*)0) ||
     nla_len(tb[TCA_ACT_INDEX]) < sizeof(index))
  goto err_out;
 index = nla_get_u32(tb[TCA_ACT_INDEX]);

 err = -ENOMEM;
 a = kzalloc(sizeof(struct tc_action), GFP_KERNEL);
 if (a == ((void*)0))
  goto err_out;

 err = -EINVAL;
 a->ops = tc_lookup_action(tb[TCA_ACT_KIND]);
 if (a->ops == ((void*)0))
  goto err_free;
 if (a->ops->lookup == ((void*)0))
  goto err_mod;
 err = -ENOENT;
 if (a->ops->lookup(a, index) == 0)
  goto err_mod;

 module_put(a->ops->owner);
 return a;

err_mod:
 module_put(a->ops->owner);
err_free:
 kfree(a);
err_out:
 return ERR_PTR(err);
}
