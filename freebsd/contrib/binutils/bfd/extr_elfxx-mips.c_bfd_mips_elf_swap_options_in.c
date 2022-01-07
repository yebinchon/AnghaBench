
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int bfd ;
struct TYPE_6__ {int info; int section; int size; int kind; } ;
struct TYPE_5__ {int info; int section; void* size; void* kind; } ;
typedef TYPE_1__ Elf_Internal_Options ;
typedef TYPE_2__ Elf_External_Options ;


 int H_GET_16 (int *,int ) ;
 int H_GET_32 (int *,int ) ;
 void* H_GET_8 (int *,int ) ;

void
bfd_mips_elf_swap_options_in (bfd *abfd, const Elf_External_Options *ex,
         Elf_Internal_Options *in)
{
  in->kind = H_GET_8 (abfd, ex->kind);
  in->size = H_GET_8 (abfd, ex->size);
  in->section = H_GET_16 (abfd, ex->section);
  in->info = H_GET_32 (abfd, ex->info);
}
