
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nlattr {int dummy; } ;


 int CTA_HELP_MAX ;
 size_t CTA_HELP_NAME ;
 int EINVAL ;
 char* nla_data (struct nlattr*) ;
 int nla_parse_nested (struct nlattr**,int ,struct nlattr const*,int *) ;

__attribute__((used)) static inline int
ctnetlink_parse_help(const struct nlattr *attr, char **helper_name)
{
 struct nlattr *tb[CTA_HELP_MAX+1];

 nla_parse_nested(tb, CTA_HELP_MAX, attr, ((void*)0));

 if (!tb[CTA_HELP_NAME])
  return -EINVAL;

 *helper_name = nla_data(tb[CTA_HELP_NAME]);

 return 0;
}
