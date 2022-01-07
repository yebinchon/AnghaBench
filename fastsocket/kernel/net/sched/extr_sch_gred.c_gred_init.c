
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nlattr {int dummy; } ;
struct Qdisc {int dummy; } ;


 int EINVAL ;
 size_t TCA_GRED_DPS ;
 int TCA_GRED_MAX ;
 size_t TCA_GRED_PARMS ;
 size_t TCA_GRED_STAB ;
 int gred_change_table_def (struct Qdisc*,struct nlattr*) ;
 int gred_policy ;
 int nla_parse_nested (struct nlattr**,int ,struct nlattr*,int ) ;

__attribute__((used)) static int gred_init(struct Qdisc *sch, struct nlattr *opt)
{
 struct nlattr *tb[TCA_GRED_MAX + 1];
 int err;

 if (opt == ((void*)0))
  return -EINVAL;

 err = nla_parse_nested(tb, TCA_GRED_MAX, opt, gred_policy);
 if (err < 0)
  return err;

 if (tb[TCA_GRED_PARMS] || tb[TCA_GRED_STAB])
  return -EINVAL;

 return gred_change_table_def(sch, tb[TCA_GRED_DPS]);
}
