
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tcf_proto {int dummy; } ;
struct tcf_exts {int dummy; } ;
struct tcf_ematch_tree {int dummy; } ;
struct nlattr {int dummy; } ;
struct TYPE_2__ {int classid; } ;
struct basic_filter {int ematches; int exts; TYPE_1__ res; } ;


 int EINVAL ;
 size_t TCA_BASIC_CLASSID ;
 size_t TCA_BASIC_EMATCHES ;
 int basic_ext_map ;
 int nla_get_u32 (struct nlattr*) ;
 int tcf_bind_filter (struct tcf_proto*,TYPE_1__*,unsigned long) ;
 int tcf_em_tree_change (struct tcf_proto*,int *,struct tcf_ematch_tree*) ;
 int tcf_em_tree_validate (struct tcf_proto*,struct nlattr*,struct tcf_ematch_tree*) ;
 int tcf_exts_change (struct tcf_proto*,int *,struct tcf_exts*) ;
 int tcf_exts_destroy (struct tcf_proto*,struct tcf_exts*) ;
 int tcf_exts_validate (struct tcf_proto*,struct nlattr**,struct nlattr*,struct tcf_exts*,int *) ;

__attribute__((used)) static inline int basic_set_parms(struct tcf_proto *tp, struct basic_filter *f,
      unsigned long base, struct nlattr **tb,
      struct nlattr *est)
{
 int err = -EINVAL;
 struct tcf_exts e;
 struct tcf_ematch_tree t;

 err = tcf_exts_validate(tp, tb, est, &e, &basic_ext_map);
 if (err < 0)
  return err;

 err = tcf_em_tree_validate(tp, tb[TCA_BASIC_EMATCHES], &t);
 if (err < 0)
  goto errout;

 if (tb[TCA_BASIC_CLASSID]) {
  f->res.classid = nla_get_u32(tb[TCA_BASIC_CLASSID]);
  tcf_bind_filter(tp, &f->res, base);
 }

 tcf_exts_change(tp, &f->exts, &e);
 tcf_em_tree_change(tp, &f->ematches, &t);

 return 0;
errout:
 tcf_exts_destroy(tp, &e);
 return err;
}
