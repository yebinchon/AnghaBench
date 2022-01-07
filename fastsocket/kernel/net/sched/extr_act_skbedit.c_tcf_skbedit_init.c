
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct tcf_skbedit {int flags; int priority; int tcf_lock; int tcf_action; int queue_mapping; } ;
struct tcf_common {int dummy; } ;
struct tc_skbedit {int action; int index; } ;
struct tc_action {int dummy; } ;
struct nlattr {int dummy; } ;


 int ACT_P_CREATED ;
 int EEXIST ;
 int EINVAL ;
 scalar_t__ IS_ERR (struct tcf_common*) ;
 int PTR_ERR (struct tcf_common*) ;
 int SKBEDIT_F_PRIORITY ;
 int SKBEDIT_F_QUEUE_MAPPING ;
 int TCA_SKBEDIT_MAX ;
 size_t TCA_SKBEDIT_PARMS ;
 size_t TCA_SKBEDIT_PRIORITY ;
 size_t TCA_SKBEDIT_QUEUE_MAPPING ;
 void* nla_data (struct nlattr*) ;
 int nla_parse_nested (struct nlattr**,int ,struct nlattr*,int ) ;
 int skbedit_hash_info ;
 int skbedit_idx_gen ;
 int skbedit_policy ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 struct tcf_common* tcf_hash_check (int ,struct tc_action*,int,int *) ;
 struct tcf_common* tcf_hash_create (int ,struct nlattr*,struct tc_action*,int,int,int *,int *) ;
 int tcf_hash_insert (struct tcf_common*,int *) ;
 int tcf_hash_release (struct tcf_common*,int,int *) ;
 struct tcf_skbedit* to_skbedit (struct tcf_common*) ;

__attribute__((used)) static int tcf_skbedit_init(struct nlattr *nla, struct nlattr *est,
    struct tc_action *a, int ovr, int bind)
{
 struct nlattr *tb[TCA_SKBEDIT_MAX + 1];
 struct tc_skbedit *parm;
 struct tcf_skbedit *d;
 struct tcf_common *pc;
 u32 flags = 0, *priority = ((void*)0);
 u16 *queue_mapping = ((void*)0);
 int ret = 0, err;

 if (nla == ((void*)0))
  return -EINVAL;

 err = nla_parse_nested(tb, TCA_SKBEDIT_MAX, nla, skbedit_policy);
 if (err < 0)
  return err;

 if (tb[TCA_SKBEDIT_PARMS] == ((void*)0))
  return -EINVAL;

 if (tb[TCA_SKBEDIT_PRIORITY] != ((void*)0)) {
  flags |= SKBEDIT_F_PRIORITY;
  priority = nla_data(tb[TCA_SKBEDIT_PRIORITY]);
 }

 if (tb[TCA_SKBEDIT_QUEUE_MAPPING] != ((void*)0)) {
  flags |= SKBEDIT_F_QUEUE_MAPPING;
  queue_mapping = nla_data(tb[TCA_SKBEDIT_QUEUE_MAPPING]);
 }
 if (!flags)
  return -EINVAL;

 parm = nla_data(tb[TCA_SKBEDIT_PARMS]);

 pc = tcf_hash_check(parm->index, a, bind, &skbedit_hash_info);
 if (!pc) {
  pc = tcf_hash_create(parm->index, est, a, sizeof(*d), bind,
         &skbedit_idx_gen, &skbedit_hash_info);
  if (IS_ERR(pc))
      return PTR_ERR(pc);

  d = to_skbedit(pc);
  ret = ACT_P_CREATED;
 } else {
  d = to_skbedit(pc);
  if (!ovr) {
   tcf_hash_release(pc, bind, &skbedit_hash_info);
   return -EEXIST;
  }
 }

 spin_lock_bh(&d->tcf_lock);

 d->flags = flags;
 if (flags & SKBEDIT_F_PRIORITY)
  d->priority = *priority;
 if (flags & SKBEDIT_F_QUEUE_MAPPING)
  d->queue_mapping = *queue_mapping;
 d->tcf_action = parm->action;

 spin_unlock_bh(&d->tcf_lock);

 if (ret == ACT_P_CREATED)
  tcf_hash_insert(pc, &skbedit_hash_info);
 return ret;
}
