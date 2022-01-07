
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct tcf_proto {scalar_t__ root; } ;
struct tcf_exts {int dummy; } ;
struct nlattr {int dummy; } ;
struct fw_head {int mask; } ;
struct TYPE_2__ {void* classid; } ;
struct fw_filter {int exts; int indev; TYPE_1__ res; } ;


 int EINVAL ;
 size_t TCA_FW_CLASSID ;
 size_t TCA_FW_INDEV ;
 size_t TCA_FW_MASK ;
 size_t TCA_RATE ;
 int fw_ext_map ;
 void* nla_get_u32 (struct nlattr*) ;
 int tcf_bind_filter (struct tcf_proto*,TYPE_1__*,unsigned long) ;
 int tcf_change_indev (struct tcf_proto*,int ,struct nlattr*) ;
 int tcf_exts_change (struct tcf_proto*,int *,struct tcf_exts*) ;
 int tcf_exts_destroy (struct tcf_proto*,struct tcf_exts*) ;
 int tcf_exts_validate (struct tcf_proto*,struct nlattr**,struct nlattr*,struct tcf_exts*,int *) ;

__attribute__((used)) static int
fw_change_attrs(struct tcf_proto *tp, struct fw_filter *f,
 struct nlattr **tb, struct nlattr **tca, unsigned long base)
{
 struct fw_head *head = (struct fw_head *)tp->root;
 struct tcf_exts e;
 u32 mask;
 int err;

 err = tcf_exts_validate(tp, tb, tca[TCA_RATE], &e, &fw_ext_map);
 if (err < 0)
  return err;

 err = -EINVAL;
 if (tb[TCA_FW_CLASSID]) {
  f->res.classid = nla_get_u32(tb[TCA_FW_CLASSID]);
  tcf_bind_filter(tp, &f->res, base);
 }
 if (tb[TCA_FW_MASK]) {
  mask = nla_get_u32(tb[TCA_FW_MASK]);
  if (mask != head->mask)
   goto errout;
 } else if (head->mask != 0xFFFFFFFF)
  goto errout;

 tcf_exts_change(tp, &f->exts, &e);

 return 0;
errout:
 tcf_exts_destroy(tp, &e);
 return err;
}
