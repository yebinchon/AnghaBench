
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* u32 ;
struct tcf_proto {int dummy; } ;
struct tcf_exts {int dummy; } ;
struct TYPE_2__ {void* classid; } ;
struct tc_u_knode {int exts; int indev; TYPE_1__ res; struct tc_u_hnode* ht_down; } ;
struct tc_u_hnode {int refcnt; int tp_c; } ;
struct nlattr {int dummy; } ;


 int EINVAL ;
 size_t TCA_U32_CLASSID ;
 size_t TCA_U32_INDEV ;
 size_t TCA_U32_LINK ;
 scalar_t__ TC_U32_KEY (void*) ;
 void* nla_get_u32 (struct nlattr*) ;
 int tcf_bind_filter (struct tcf_proto*,TYPE_1__*,unsigned long) ;
 int tcf_change_indev (struct tcf_proto*,int ,struct nlattr*) ;
 int tcf_exts_change (struct tcf_proto*,int *,struct tcf_exts*) ;
 int tcf_exts_destroy (struct tcf_proto*,struct tcf_exts*) ;
 int tcf_exts_validate (struct tcf_proto*,struct nlattr**,struct nlattr*,struct tcf_exts*,int *) ;
 int tcf_tree_lock (struct tcf_proto*) ;
 int tcf_tree_unlock (struct tcf_proto*) ;
 int u32_ext_map ;
 struct tc_u_hnode* u32_lookup_ht (int ,void*) ;

__attribute__((used)) static int u32_set_parms(struct tcf_proto *tp, unsigned long base,
    struct tc_u_hnode *ht,
    struct tc_u_knode *n, struct nlattr **tb,
    struct nlattr *est)
{
 int err;
 struct tcf_exts e;

 err = tcf_exts_validate(tp, tb, est, &e, &u32_ext_map);
 if (err < 0)
  return err;

 err = -EINVAL;
 if (tb[TCA_U32_LINK]) {
  u32 handle = nla_get_u32(tb[TCA_U32_LINK]);
  struct tc_u_hnode *ht_down = ((void*)0), *ht_old;

  if (TC_U32_KEY(handle))
   goto errout;

  if (handle) {
   ht_down = u32_lookup_ht(ht->tp_c, handle);

   if (ht_down == ((void*)0))
    goto errout;
   ht_down->refcnt++;
  }

  tcf_tree_lock(tp);
  ht_old = n->ht_down;
  n->ht_down = ht_down;
  tcf_tree_unlock(tp);

  if (ht_old)
   ht_old->refcnt--;
 }
 if (tb[TCA_U32_CLASSID]) {
  n->res.classid = nla_get_u32(tb[TCA_U32_CLASSID]);
  tcf_bind_filter(tp, &n->res, base);
 }
 tcf_exts_change(tp, &n->exts, &e);

 return 0;
errout:
 tcf_exts_destroy(tp, &e);
 return err;
}
