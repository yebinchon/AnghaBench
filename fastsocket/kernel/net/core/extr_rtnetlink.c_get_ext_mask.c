
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nlattr {int dummy; } ;


 size_t IFLA_AF_SPEC ;
 size_t IFLA_EXT_MASK ;
 int nla_get_u32 (struct nlattr*) ;
 int nla_len (struct nlattr*) ;

__attribute__((used)) static u32 get_ext_mask(struct nlattr *tb[])
{
 if (tb[IFLA_EXT_MASK])
  return nla_get_u32(tb[IFLA_EXT_MASK]);
 if (tb[IFLA_AF_SPEC] && nla_len(tb[IFLA_AF_SPEC]) == 4)
  return nla_get_u32(tb[IFLA_AF_SPEC]);

 return 0;
}
