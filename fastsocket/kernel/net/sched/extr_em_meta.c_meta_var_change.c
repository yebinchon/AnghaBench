
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nlattr {int dummy; } ;
struct meta_value {unsigned long val; int len; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ kmemdup (int ,int,int ) ;
 int nla_data (struct nlattr*) ;
 int nla_len (struct nlattr*) ;

__attribute__((used)) static int meta_var_change(struct meta_value *dst, struct nlattr *nla)
{
 int len = nla_len(nla);

 dst->val = (unsigned long)kmemdup(nla_data(nla), len, GFP_KERNEL);
 if (dst->val == 0UL)
  return -ENOMEM;
 dst->len = len;
 return 0;
}
