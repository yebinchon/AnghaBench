
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ format; TYPE_1__* xvec; } ;
typedef TYPE_2__ bfd ;
struct TYPE_9__ {unsigned int gp_size; } ;
struct TYPE_7__ {scalar_t__ flavour; } ;


 scalar_t__ bfd_object ;
 scalar_t__ bfd_target_ecoff_flavour ;
 scalar_t__ bfd_target_elf_flavour ;
 TYPE_4__* ecoff_data (TYPE_2__*) ;
 unsigned int elf_gp_size (TYPE_2__*) ;

unsigned int
bfd_get_gp_size (bfd *abfd)
{
  if (abfd->format == bfd_object)
    {
      if (abfd->xvec->flavour == bfd_target_ecoff_flavour)
 return ecoff_data (abfd)->gp_size;
      else if (abfd->xvec->flavour == bfd_target_elf_flavour)
 return elf_gp_size (abfd);
    }
  return 0;
}
