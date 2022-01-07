
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int bfd_vma ;
typedef int bfd ;
struct TYPE_2__ {int (* elf_backend_fprintf_vma ) (int *,void*,int) ;} ;
typedef int FILE ;


 scalar_t__ bfd_get_flavour (int *) ;
 int bfd_get_target (int *) ;
 scalar_t__ bfd_target_elf_flavour ;
 int fprintf (int *,char*,unsigned long) ;
 int fprintf_vma (int *,int) ;
 TYPE_1__* get_elf_backend_data (int *) ;
 scalar_t__ strcmp (int ,char*) ;
 int * strstr (int ,char*) ;
 int stub1 (int *,void*,int) ;

void
bfd_fprintf_vma (bfd *abfd, void *stream, bfd_vma value)
{
  if (bfd_get_flavour (abfd) == bfd_target_elf_flavour)
    get_elf_backend_data (abfd)->elf_backend_fprintf_vma (abfd, stream, value);
  else
    fprintf_vma ((FILE *) stream, value);
}
