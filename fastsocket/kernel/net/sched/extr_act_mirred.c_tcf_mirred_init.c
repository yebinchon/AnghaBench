
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcf_mirred {int tcfm_ok_push; int tcfm_list; int tcf_lock; struct net_device* tcfm_dev; scalar_t__ tcfm_ifindex; int tcfm_eaction; int tcf_action; } ;
struct tcf_common {int dummy; } ;
struct tc_mirred {scalar_t__ ifindex; int eaction; int action; int index; } ;
struct tc_action {int dummy; } ;
struct nlattr {int dummy; } ;
struct net_device {int type; } ;


 int ACT_P_CREATED ;






 int EEXIST ;
 int EINVAL ;
 int ENODEV ;
 scalar_t__ IS_ERR (struct tcf_common*) ;
 int PTR_ERR (struct tcf_common*) ;
 int TCA_MIRRED_MAX ;
 size_t TCA_MIRRED_PARMS ;
 struct net_device* __dev_get_by_index (int *,scalar_t__) ;
 int dev_hold (struct net_device*) ;
 int dev_put (struct net_device*) ;
 int init_net ;
 int list_add (int *,int *) ;
 int mirred_hash_info ;
 int mirred_idx_gen ;
 int mirred_list ;
 int mirred_policy ;
 struct tc_mirred* nla_data (struct nlattr*) ;
 int nla_parse_nested (struct nlattr**,int ,struct nlattr*,int ) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 struct tcf_common* tcf_hash_check (int ,struct tc_action*,int,int *) ;
 struct tcf_common* tcf_hash_create (int ,struct nlattr*,struct tc_action*,int,int,int *,int *) ;
 int tcf_hash_insert (struct tcf_common*,int *) ;
 int tcf_mirred_release (struct tcf_mirred*,int) ;
 struct tcf_mirred* to_mirred (struct tcf_common*) ;

__attribute__((used)) static int tcf_mirred_init(struct nlattr *nla, struct nlattr *est,
      struct tc_action *a, int ovr, int bind)
{
 struct nlattr *tb[TCA_MIRRED_MAX + 1];
 struct tc_mirred *parm;
 struct tcf_mirred *m;
 struct tcf_common *pc;
 struct net_device *dev = ((void*)0);
 int ret = 0, err;
 int ok_push = 0;

 if (nla == ((void*)0))
  return -EINVAL;

 err = nla_parse_nested(tb, TCA_MIRRED_MAX, nla, mirred_policy);
 if (err < 0)
  return err;

 if (tb[TCA_MIRRED_PARMS] == ((void*)0))
  return -EINVAL;
 parm = nla_data(tb[TCA_MIRRED_PARMS]);

 if (parm->ifindex) {
  dev = __dev_get_by_index(&init_net, parm->ifindex);
  if (dev == ((void*)0))
   return -ENODEV;
  switch (dev->type) {
   case 130:
   case 129:
   case 131:
   case 133:
   case 128:
   case 132:
    ok_push = 0;
    break;
   default:
    ok_push = 1;
    break;
  }
 }

 pc = tcf_hash_check(parm->index, a, bind, &mirred_hash_info);
 if (!pc) {
  if (!parm->ifindex)
   return -EINVAL;
  pc = tcf_hash_create(parm->index, est, a, sizeof(*m), bind,
         &mirred_idx_gen, &mirred_hash_info);
  if (IS_ERR(pc))
      return PTR_ERR(pc);
  ret = ACT_P_CREATED;
 } else {
  if (!ovr) {
   tcf_mirred_release(to_mirred(pc), bind);
   return -EEXIST;
  }
 }
 m = to_mirred(pc);

 spin_lock_bh(&m->tcf_lock);
 m->tcf_action = parm->action;
 m->tcfm_eaction = parm->eaction;
 if (parm->ifindex) {
  m->tcfm_ifindex = parm->ifindex;
  if (ret != ACT_P_CREATED)
   dev_put(m->tcfm_dev);
  m->tcfm_dev = dev;
  dev_hold(dev);
  m->tcfm_ok_push = ok_push;
 }
 spin_unlock_bh(&m->tcf_lock);
 if (ret == ACT_P_CREATED) {
  list_add(&m->tcfm_list, &mirred_list);
  tcf_hash_insert(pc, &mirred_hash_info);
 }

 return ret;
}
