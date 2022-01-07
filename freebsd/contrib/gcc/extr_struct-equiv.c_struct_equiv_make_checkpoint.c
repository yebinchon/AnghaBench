
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct struct_equiv_checkpoint {int dummy; } ;
struct equiv_info {struct struct_equiv_checkpoint cur; } ;



__attribute__((used)) static inline void
struct_equiv_make_checkpoint (struct struct_equiv_checkpoint *p,
         struct equiv_info *info)
{
  *p = info->cur;
}
