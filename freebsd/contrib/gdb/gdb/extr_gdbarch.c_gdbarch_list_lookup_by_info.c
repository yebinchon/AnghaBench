
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gdbarch_list {TYPE_1__* gdbarch; struct gdbarch_list* next; } ;
struct gdbarch_info {scalar_t__ bfd_arch_info; scalar_t__ byte_order; scalar_t__ osabi; } ;
struct TYPE_2__ {scalar_t__ bfd_arch_info; scalar_t__ byte_order; scalar_t__ osabi; } ;



struct gdbarch_list *
gdbarch_list_lookup_by_info (struct gdbarch_list *arches,
                             const struct gdbarch_info *info)
{
  for (; arches != ((void*)0); arches = arches->next)
    {
      if (info->bfd_arch_info != arches->gdbarch->bfd_arch_info)
 continue;
      if (info->byte_order != arches->gdbarch->byte_order)
 continue;
      if (info->osabi != arches->gdbarch->osabi)
 continue;
      return arches;
    }
  return ((void*)0);
}
