
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef enum bfd_architecture { ____Placeholder_bfd_architecture } bfd_architecture ;
struct TYPE_4__ {int arch; unsigned long mach; scalar_t__ the_default; struct TYPE_4__* next; } ;
typedef TYPE_1__ bfd_arch_info_type ;


 TYPE_1__** bfd_archures_list ;

const bfd_arch_info_type *
bfd_lookup_arch (enum bfd_architecture arch, unsigned long machine)
{
  const bfd_arch_info_type * const *app, *ap;

  for (app = bfd_archures_list; *app != ((void*)0); app++)
    {
      for (ap = *app; ap != ((void*)0); ap = ap->next)
 {
   if (ap->arch == arch
       && (ap->mach == machine
    || (machine == 0 && ap->the_default)))
     return ap;
 }
    }

  return ((void*)0);
}
