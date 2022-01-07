
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tc_action_ops {int (* init ) (struct nlattr*,struct nlattr*,struct tc_action*,int,int) ;int owner; } ;
struct tc_action {struct tc_action_ops* ops; } ;
struct nlattr {int dummy; } ;


 int ACT_P_CREATED ;
 int EAGAIN ;
 int EINVAL ;
 int ENOENT ;
 int ENOMEM ;
 struct tc_action* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int IFNAMSIZ ;
 size_t TCA_ACT_KIND ;
 int TCA_ACT_MAX ;
 size_t TCA_ACT_OPTIONS ;
 int kfree (struct tc_action*) ;
 struct tc_action* kzalloc (int,int ) ;
 int module_put (int ) ;
 int nla_parse_nested (struct nlattr**,int ,struct nlattr*,int *) ;
 int nla_strlcpy (char*,struct nlattr*,int) ;
 int request_module (char*,char*) ;
 int rtnl_lock () ;
 int rtnl_unlock () ;
 int strlcpy (char*,char*,int) ;
 int stub1 (struct nlattr*,struct nlattr*,struct tc_action*,int,int) ;
 int stub2 (struct nlattr*,struct nlattr*,struct tc_action*,int,int) ;
 struct tc_action_ops* tc_lookup_action_n (char*) ;

struct tc_action *tcf_action_init_1(struct nlattr *nla, struct nlattr *est,
        char *name, int ovr, int bind)
{
 struct tc_action *a;
 struct tc_action_ops *a_o;
 char act_name[IFNAMSIZ];
 struct nlattr *tb[TCA_ACT_MAX+1];
 struct nlattr *kind;
 int err;

 if (name == ((void*)0)) {
  err = nla_parse_nested(tb, TCA_ACT_MAX, nla, ((void*)0));
  if (err < 0)
   goto err_out;
  err = -EINVAL;
  kind = tb[TCA_ACT_KIND];
  if (kind == ((void*)0))
   goto err_out;
  if (nla_strlcpy(act_name, kind, IFNAMSIZ) >= IFNAMSIZ)
   goto err_out;
 } else {
  err = -EINVAL;
  if (strlcpy(act_name, name, IFNAMSIZ) >= IFNAMSIZ)
   goto err_out;
 }

 a_o = tc_lookup_action_n(act_name);
 if (a_o == ((void*)0)) {
  err = -ENOENT;
  goto err_out;
 }

 err = -ENOMEM;
 a = kzalloc(sizeof(*a), GFP_KERNEL);
 if (a == ((void*)0))
  goto err_mod;


 if (name == ((void*)0))
  err = a_o->init(tb[TCA_ACT_OPTIONS], est, a, ovr, bind);
 else
  err = a_o->init(nla, est, a, ovr, bind);
 if (err < 0)
  goto err_free;





 if (err != ACT_P_CREATED)
  module_put(a_o->owner);
 a->ops = a_o;

 return a;

err_free:
 kfree(a);
err_mod:
 module_put(a_o->owner);
err_out:
 return ERR_PTR(err);
}
