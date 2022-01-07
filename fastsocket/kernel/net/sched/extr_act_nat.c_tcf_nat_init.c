
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcf_nat {int tcf_lock; int tcf_action; int flags; int mask; int new_addr; int old_addr; } ;
struct tcf_common {int dummy; } ;
struct tc_nat {int action; int flags; int mask; int new_addr; int old_addr; int index; } ;
struct tc_action {int dummy; } ;
struct nlattr {int dummy; } ;


 int ACT_P_CREATED ;
 int EEXIST ;
 int EINVAL ;
 scalar_t__ IS_ERR (struct tcf_common*) ;
 int PTR_ERR (struct tcf_common*) ;
 int TCA_NAT_MAX ;
 size_t TCA_NAT_PARMS ;
 int nat_hash_info ;
 int nat_idx_gen ;
 int nat_policy ;
 struct tc_nat* nla_data (struct nlattr*) ;
 int nla_parse_nested (struct nlattr**,int ,struct nlattr*,int ) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 struct tcf_common* tcf_hash_check (int ,struct tc_action*,int,int *) ;
 struct tcf_common* tcf_hash_create (int ,struct nlattr*,struct tc_action*,int,int,int *,int *) ;
 int tcf_hash_insert (struct tcf_common*,int *) ;
 int tcf_hash_release (struct tcf_common*,int,int *) ;
 struct tcf_nat* to_tcf_nat (struct tcf_common*) ;

__attribute__((used)) static int tcf_nat_init(struct nlattr *nla, struct nlattr *est,
   struct tc_action *a, int ovr, int bind)
{
 struct nlattr *tb[TCA_NAT_MAX + 1];
 struct tc_nat *parm;
 int ret = 0, err;
 struct tcf_nat *p;
 struct tcf_common *pc;

 if (nla == ((void*)0))
  return -EINVAL;

 err = nla_parse_nested(tb, TCA_NAT_MAX, nla, nat_policy);
 if (err < 0)
  return err;

 if (tb[TCA_NAT_PARMS] == ((void*)0))
  return -EINVAL;
 parm = nla_data(tb[TCA_NAT_PARMS]);

 pc = tcf_hash_check(parm->index, a, bind, &nat_hash_info);
 if (!pc) {
  pc = tcf_hash_create(parm->index, est, a, sizeof(*p), bind,
         &nat_idx_gen, &nat_hash_info);
  if (IS_ERR(pc))
      return PTR_ERR(pc);
  p = to_tcf_nat(pc);
  ret = ACT_P_CREATED;
 } else {
  p = to_tcf_nat(pc);
  if (!ovr) {
   tcf_hash_release(pc, bind, &nat_hash_info);
   return -EEXIST;
  }
 }

 spin_lock_bh(&p->tcf_lock);
 p->old_addr = parm->old_addr;
 p->new_addr = parm->new_addr;
 p->mask = parm->mask;
 p->flags = parm->flags;

 p->tcf_action = parm->action;
 spin_unlock_bh(&p->tcf_lock);

 if (ret == ACT_P_CREATED)
  tcf_hash_insert(pc, &nat_hash_info);

 return ret;
}
