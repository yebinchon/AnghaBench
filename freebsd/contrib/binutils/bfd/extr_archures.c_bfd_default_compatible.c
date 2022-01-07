
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ arch; scalar_t__ bits_per_word; scalar_t__ mach; } ;
typedef TYPE_1__ bfd_arch_info_type ;



const bfd_arch_info_type *
bfd_default_compatible (const bfd_arch_info_type *a,
   const bfd_arch_info_type *b)
{
  if (a->arch != b->arch)
    return ((void*)0);

  if (a->bits_per_word != b->bits_per_word)
    return ((void*)0);

  if (a->mach > b->mach)
    return a;

  if (b->mach > a->mach)
    return b;

  return a;
}
