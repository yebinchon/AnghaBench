
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef scalar_t__ bfd_boolean ;
struct TYPE_10__ {scalar_t__ arch; TYPE_1__ const* (* compatible ) (TYPE_1__ const*,TYPE_1__ const*) ;} ;
typedef TYPE_1__ bfd_arch_info_type ;
struct TYPE_11__ {TYPE_1__ const* arch_info; } ;
typedef TYPE_2__ bfd ;


 scalar_t__ bfd_arch_unknown ;
 int bfd_get_target (TYPE_2__ const*) ;
 scalar_t__ strcmp (int ,char*) ;
 TYPE_1__ const* stub1 (TYPE_1__ const*,TYPE_1__ const*) ;

const bfd_arch_info_type *
bfd_arch_get_compatible (const bfd *abfd,
    const bfd *bbfd,
    bfd_boolean accept_unknowns)
{
  const bfd * ubfd = ((void*)0);


  if (((ubfd = abfd) && ubfd->arch_info->arch == bfd_arch_unknown)
      || ((ubfd = bbfd) && ubfd->arch_info->arch == bfd_arch_unknown))
    {





      if (accept_unknowns
   || strcmp (bfd_get_target (ubfd), "binary") == 0)
 return ubfd->arch_info;
      return ((void*)0);
    }


  return abfd->arch_info->compatible (abfd->arch_info, bbfd->arch_info);
}
