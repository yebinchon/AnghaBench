
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int bfd_vma ;
typedef int bfd ;
struct TYPE_2__ {int (* elf_backend_sprintf_vma ) (int *,char*,int ) ;} ;


 scalar_t__ bfd_get_flavour (int *) ;
 scalar_t__ bfd_target_elf_flavour ;
 TYPE_1__* get_elf_backend_data (int *) ;
 int sprintf_vma (char*,int ) ;
 int stub1 (int *,char*,int ) ;

void
bfd_sprintf_vma (bfd *abfd, char *buf, bfd_vma value)
{
  if (bfd_get_flavour (abfd) == bfd_target_elf_flavour)
    get_elf_backend_data (abfd)->elf_backend_sprintf_vma (abfd, buf, value);
  else
    sprintf_vma (buf, value);
}
