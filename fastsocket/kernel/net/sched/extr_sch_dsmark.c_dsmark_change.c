
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u8 ;
typedef int u32 ;
struct nlattr {int dummy; } ;
struct dsmark_qdisc_data {void** mask; void** value; } ;
struct Qdisc {int dummy; } ;


 int EINVAL ;
 int ENOENT ;
 size_t TCA_DSMARK_MASK ;
 int TCA_DSMARK_MAX ;
 size_t TCA_DSMARK_VALUE ;
 size_t TCA_OPTIONS ;
 int dsmark_policy ;
 int dsmark_valid_index (struct dsmark_qdisc_data*,unsigned long) ;
 void* nla_get_u8 (struct nlattr*) ;
 int nla_parse_nested (struct nlattr**,int ,struct nlattr*,int ) ;
 int pr_debug (char*,struct Qdisc*,struct dsmark_qdisc_data*,int ,int ,unsigned long) ;
 struct dsmark_qdisc_data* qdisc_priv (struct Qdisc*) ;

__attribute__((used)) static int dsmark_change(struct Qdisc *sch, u32 classid, u32 parent,
    struct nlattr **tca, unsigned long *arg)
{
 struct dsmark_qdisc_data *p = qdisc_priv(sch);
 struct nlattr *opt = tca[TCA_OPTIONS];
 struct nlattr *tb[TCA_DSMARK_MAX + 1];
 int err = -EINVAL;
 u8 mask = 0;

 pr_debug("dsmark_change(sch %p,[qdisc %p],classid %x,parent %x),"
  "arg 0x%lx\n", sch, p, classid, parent, *arg);

 if (!dsmark_valid_index(p, *arg)) {
  err = -ENOENT;
  goto errout;
 }

 if (!opt)
  goto errout;

 err = nla_parse_nested(tb, TCA_DSMARK_MAX, opt, dsmark_policy);
 if (err < 0)
  goto errout;

 if (tb[TCA_DSMARK_MASK])
  mask = nla_get_u8(tb[TCA_DSMARK_MASK]);

 if (tb[TCA_DSMARK_VALUE])
  p->value[*arg-1] = nla_get_u8(tb[TCA_DSMARK_VALUE]);

 if (tb[TCA_DSMARK_MASK])
  p->mask[*arg-1] = mask;

 err = 0;

errout:
 return err;
}
