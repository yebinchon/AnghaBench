
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int bfd ;
struct TYPE_6__ {int info; int section; int size; int kind; } ;
struct TYPE_5__ {int info; int section; int size; int kind; } ;
typedef TYPE_1__ Elf_Internal_Options ;
typedef TYPE_2__ Elf_External_Options ;


 int H_PUT_16 (int *,int ,int ) ;
 int H_PUT_32 (int *,int ,int ) ;
 int H_PUT_8 (int *,int ,int ) ;

void
bfd_mips_elf_swap_options_out (bfd *abfd, const Elf_Internal_Options *in,
          Elf_External_Options *ex)
{
  H_PUT_8 (abfd, in->kind, ex->kind);
  H_PUT_8 (abfd, in->size, ex->size);
  H_PUT_16 (abfd, in->section, ex->section);
  H_PUT_32 (abfd, in->info, ex->info);
}
