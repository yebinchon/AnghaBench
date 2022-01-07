
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef void* u32 ;
typedef int u16 ;
struct nlattr {int dummy; } ;
struct dsmark_qdisc_data {int indices; int * q; int set_tc_index; void* default_index; int * value; int * mask; } ;
struct Qdisc {int handle; int dev_queue; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 void* NO_DEFAULT_INDEX ;
 size_t TCA_DSMARK_DEFAULT_INDEX ;
 size_t TCA_DSMARK_INDICES ;
 int TCA_DSMARK_MAX ;
 size_t TCA_DSMARK_SET_TC_INDEX ;
 int dsmark_policy ;
 int hweight32 (int) ;
 int * kmalloc (int,int ) ;
 int memset (int *,int,int) ;
 int nla_get_flag (struct nlattr*) ;
 void* nla_get_u16 (struct nlattr*) ;
 int nla_parse_nested (struct nlattr**,int ,struct nlattr*,int ) ;
 int noop_qdisc ;
 int pfifo_qdisc_ops ;
 int pr_debug (char*,struct Qdisc*,...) ;
 int * qdisc_create_dflt (int ,int ,int *,int ) ;
 int qdisc_dev (struct Qdisc*) ;
 struct dsmark_qdisc_data* qdisc_priv (struct Qdisc*) ;

__attribute__((used)) static int dsmark_init(struct Qdisc *sch, struct nlattr *opt)
{
 struct dsmark_qdisc_data *p = qdisc_priv(sch);
 struct nlattr *tb[TCA_DSMARK_MAX + 1];
 int err = -EINVAL;
 u32 default_index = NO_DEFAULT_INDEX;
 u16 indices;
 u8 *mask;

 pr_debug("dsmark_init(sch %p,[qdisc %p],opt %p)\n", sch, p, opt);

 if (!opt)
  goto errout;

 err = nla_parse_nested(tb, TCA_DSMARK_MAX, opt, dsmark_policy);
 if (err < 0)
  goto errout;

 err = -EINVAL;
 indices = nla_get_u16(tb[TCA_DSMARK_INDICES]);

 if (hweight32(indices) != 1)
  goto errout;

 if (tb[TCA_DSMARK_DEFAULT_INDEX])
  default_index = nla_get_u16(tb[TCA_DSMARK_DEFAULT_INDEX]);

 mask = kmalloc(indices * 2, GFP_KERNEL);
 if (mask == ((void*)0)) {
  err = -ENOMEM;
  goto errout;
 }

 p->mask = mask;
 memset(p->mask, 0xff, indices);

 p->value = p->mask + indices;
 memset(p->value, 0, indices);

 p->indices = indices;
 p->default_index = default_index;
 p->set_tc_index = nla_get_flag(tb[TCA_DSMARK_SET_TC_INDEX]);

 p->q = qdisc_create_dflt(qdisc_dev(sch), sch->dev_queue,
     &pfifo_qdisc_ops, sch->handle);
 if (p->q == ((void*)0))
  p->q = &noop_qdisc;

 pr_debug("dsmark_init: qdisc %p\n", p->q);

 err = 0;
errout:
 return err;
}
