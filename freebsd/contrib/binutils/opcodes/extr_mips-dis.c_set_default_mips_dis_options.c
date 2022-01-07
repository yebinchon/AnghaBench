
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mips_arch_choice {int hwr_names; scalar_t__ cp0sel_names_len; int * cp0sel_names; int cp0_names; int isa; int processor; } ;
struct disassemble_info {scalar_t__ flavour; int mach; TYPE_1__* section; } ;
struct TYPE_4__ {int isa; int processor; } ;
struct TYPE_3__ {int owner; } ;
typedef int Elf_Internal_Ehdr ;


 int CPU_R3000 ;
 int ISA_MIPS3 ;
 scalar_t__ bfd_target_elf_flavour ;
 struct mips_arch_choice* choose_arch_by_number (int ) ;
 int * elf_elfheader (int ) ;
 scalar_t__ is_newabi (int *) ;
 int mips_cp0_names ;
 int mips_cp0_names_numeric ;
 int * mips_cp0sel_names ;
 scalar_t__ mips_cp0sel_names_len ;
 int mips_fpr_names ;
 int mips_fpr_names_numeric ;
 int mips_gpr_names ;
 int mips_gpr_names_newabi ;
 int mips_gpr_names_oldabi ;
 int mips_hwr_names ;
 int mips_hwr_names_numeric ;
 int mips_isa ;
 int mips_processor ;
 TYPE_2__ mips_target_info ;
 scalar_t__ no_aliases ;
 int target_processor ;

__attribute__((used)) static void
set_default_mips_dis_options (struct disassemble_info *info)
{
  const struct mips_arch_choice *chosen_arch;



  mips_isa = ISA_MIPS3;
  mips_processor = CPU_R3000;
  mips_gpr_names = mips_gpr_names_oldabi;
  mips_fpr_names = mips_fpr_names_numeric;
  mips_cp0_names = mips_cp0_names_numeric;
  mips_cp0sel_names = ((void*)0);
  mips_cp0sel_names_len = 0;
  mips_hwr_names = mips_hwr_names_numeric;
  no_aliases = 0;


  if (info->flavour == bfd_target_elf_flavour && info->section != ((void*)0))
    {
      Elf_Internal_Ehdr *header;

      header = elf_elfheader (info->section->owner);
      if (is_newabi (header))
 mips_gpr_names = mips_gpr_names_newabi;
    }





  target_processor = mips_target_info.processor;
  mips_isa = mips_target_info.isa;
}
