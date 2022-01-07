
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nlattr {int dummy; } ;
struct meta_value {unsigned long val; int len; } ;


 int EINVAL ;
 scalar_t__ nla_data (struct nlattr*) ;
 unsigned long nla_get_u32 (struct nlattr*) ;
 int nla_len (struct nlattr*) ;

__attribute__((used)) static int meta_int_change(struct meta_value *dst, struct nlattr *nla)
{
 if (nla_len(nla) >= sizeof(unsigned long)) {
  dst->val = *(unsigned long *) nla_data(nla);
  dst->len = sizeof(unsigned long);
 } else if (nla_len(nla) == sizeof(u32)) {
  dst->val = nla_get_u32(nla);
  dst->len = sizeof(u32);
 } else
  return -EINVAL;

 return 0;
}
