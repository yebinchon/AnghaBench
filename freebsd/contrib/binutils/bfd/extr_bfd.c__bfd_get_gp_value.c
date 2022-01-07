
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int bfd_vma ;
struct TYPE_8__ {scalar_t__ format; TYPE_1__* xvec; } ;
typedef TYPE_2__ bfd ;
struct TYPE_9__ {int gp; } ;
struct TYPE_7__ {scalar_t__ flavour; } ;


 scalar_t__ bfd_object ;
 scalar_t__ bfd_target_ecoff_flavour ;
 scalar_t__ bfd_target_elf_flavour ;
 TYPE_4__* ecoff_data (TYPE_2__*) ;
 int elf_gp (TYPE_2__*) ;

bfd_vma
_bfd_get_gp_value (bfd *abfd)
{
  if (! abfd)
    return 0;
  if (abfd->format != bfd_object)
    return 0;

  if (abfd->xvec->flavour == bfd_target_ecoff_flavour)
    return ecoff_data (abfd)->gp;
  else if (abfd->xvec->flavour == bfd_target_elf_flavour)
    return elf_gp (abfd);

  return 0;
}
