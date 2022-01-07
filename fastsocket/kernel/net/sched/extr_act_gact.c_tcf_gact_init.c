
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcf_gact {scalar_t__ tcfg_ptype; int tcf_lock; int tcfg_pval; int tcfg_paction; int tcf_action; } ;
struct tcf_common {int dummy; } ;
struct tc_gact_p {scalar_t__ ptype; int pval; int paction; } ;
struct tc_gact {int action; int index; } ;
struct tc_action {int dummy; } ;
struct nlattr {int dummy; } ;


 int ACT_P_CREATED ;
 int EEXIST ;
 int EINVAL ;
 int EOPNOTSUPP ;
 scalar_t__ IS_ERR (struct tcf_common*) ;
 scalar_t__ MAX_RAND ;
 int PTR_ERR (struct tcf_common*) ;
 int TCA_GACT_MAX ;
 size_t TCA_GACT_PARMS ;
 size_t TCA_GACT_PROB ;
 int gact_hash_info ;
 int gact_idx_gen ;
 int gact_policy ;
 void* nla_data (struct nlattr*) ;
 int nla_parse_nested (struct nlattr**,int ,struct nlattr*,int ) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 struct tcf_common* tcf_hash_check (int ,struct tc_action*,int,int *) ;
 struct tcf_common* tcf_hash_create (int ,struct nlattr*,struct tc_action*,int,int,int *,int *) ;
 int tcf_hash_insert (struct tcf_common*,int *) ;
 int tcf_hash_release (struct tcf_common*,int,int *) ;
 struct tcf_gact* to_gact (struct tcf_common*) ;

__attribute__((used)) static int tcf_gact_init(struct nlattr *nla, struct nlattr *est,
    struct tc_action *a, int ovr, int bind)
{
 struct nlattr *tb[TCA_GACT_MAX + 1];
 struct tc_gact *parm;
 struct tcf_gact *gact;
 struct tcf_common *pc;
 int ret = 0;
 int err;




 if (nla == ((void*)0))
  return -EINVAL;

 err = nla_parse_nested(tb, TCA_GACT_MAX, nla, gact_policy);
 if (err < 0)
  return err;

 if (tb[TCA_GACT_PARMS] == ((void*)0))
  return -EINVAL;
 parm = nla_data(tb[TCA_GACT_PARMS]);


 if (tb[TCA_GACT_PROB] != ((void*)0))
  return -EOPNOTSUPP;
 pc = tcf_hash_check(parm->index, a, bind, &gact_hash_info);
 if (!pc) {
  pc = tcf_hash_create(parm->index, est, a, sizeof(*gact),
         bind, &gact_idx_gen, &gact_hash_info);
  if (IS_ERR(pc))
      return PTR_ERR(pc);
  ret = ACT_P_CREATED;
 } else {
  if (!ovr) {
   tcf_hash_release(pc, bind, &gact_hash_info);
   return -EEXIST;
  }
 }

 gact = to_gact(pc);

 spin_lock_bh(&gact->tcf_lock);
 gact->tcf_action = parm->action;







 spin_unlock_bh(&gact->tcf_lock);
 if (ret == ACT_P_CREATED)
  tcf_hash_insert(pc, &gact_hash_info);
 return ret;
}
