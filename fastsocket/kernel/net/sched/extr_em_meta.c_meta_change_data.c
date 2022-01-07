
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nlattr {int dummy; } ;
struct meta_value {int dummy; } ;
struct TYPE_2__ {int (* change ) (struct meta_value*,struct nlattr*) ;} ;


 int EINVAL ;
 TYPE_1__* meta_type_ops (struct meta_value*) ;
 scalar_t__ nla_len (struct nlattr*) ;
 int stub1 (struct meta_value*,struct nlattr*) ;

__attribute__((used)) static inline int meta_change_data(struct meta_value *dst, struct nlattr *nla)
{
 if (nla) {
  if (nla_len(nla) == 0)
   return -EINVAL;

  return meta_type_ops(dst)->change(dst, nla);
 }

 return 0;
}
