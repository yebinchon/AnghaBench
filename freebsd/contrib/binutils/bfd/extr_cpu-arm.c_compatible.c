
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ arch; scalar_t__ mach; scalar_t__ the_default; } ;
typedef TYPE_1__ bfd_arch_info_type ;



__attribute__((used)) static const bfd_arch_info_type *
compatible (const bfd_arch_info_type *a, const bfd_arch_info_type *b)
{

  if (a->arch != b->arch)
      return ((void*)0);


  if (a->mach == b->mach)
    return a;



  if (a->the_default)
    return b;

  if (b->the_default)
    return a;



  if (a->mach < b->mach)
    return b;
  else if (a->mach > b->mach)
    return a;


  return ((void*)0);
}
