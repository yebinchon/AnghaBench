
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcamsg {int dummy; } ;
struct nlmsghdr {int dummy; } ;
struct nlattr {int dummy; } ;


 int NLMSG_ALIGN (int ) ;
 int TCAA_MAX ;
 size_t TCA_ACT_KIND ;
 int TCA_ACT_MAX ;
 int TCA_ACT_MAX_PRIO ;
 size_t TCA_ACT_TAB ;
 int nla_data (struct nlattr*) ;
 int nla_len (struct nlattr*) ;
 scalar_t__ nla_parse (struct nlattr**,int ,int ,int ,int *) ;
 scalar_t__ nlmsg_parse (struct nlmsghdr const*,int,struct nlattr**,int ,int *) ;

__attribute__((used)) static struct nlattr *
find_dump_kind(const struct nlmsghdr *n)
{
 struct nlattr *tb1, *tb2[TCA_ACT_MAX+1];
 struct nlattr *tb[TCA_ACT_MAX_PRIO + 1];
 struct nlattr *nla[TCAA_MAX + 1];
 struct nlattr *kind;

 if (nlmsg_parse(n, sizeof(struct tcamsg), nla, TCAA_MAX, ((void*)0)) < 0)
  return ((void*)0);
 tb1 = nla[TCA_ACT_TAB];
 if (tb1 == ((void*)0))
  return ((void*)0);

 if (nla_parse(tb, TCA_ACT_MAX_PRIO, nla_data(tb1),
        NLMSG_ALIGN(nla_len(tb1)), ((void*)0)) < 0)
  return ((void*)0);

 if (tb[1] == ((void*)0))
  return ((void*)0);
 if (nla_parse(tb2, TCA_ACT_MAX, nla_data(tb[1]),
        nla_len(tb[1]), ((void*)0)) < 0)
  return ((void*)0);
 kind = tb2[TCA_ACT_KIND];

 return kind;
}
