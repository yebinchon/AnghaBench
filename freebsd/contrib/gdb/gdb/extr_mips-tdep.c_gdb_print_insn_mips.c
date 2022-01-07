
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gdbarch_tdep {scalar_t__ mips_abi; } ;
struct disassemble_info {scalar_t__ mach; char* disassembler_options; int flavour; } ;
typedef scalar_t__ mips_extra_func_info_t ;
typedef int bfd_vma ;


 int ADDR_BITS_REMOVE (int) ;
 scalar_t__ BFD_ENDIAN_BIG ;
 scalar_t__ MIPS_ABI_N32 ;
 scalar_t__ MIPS_ABI_N64 ;
 int PROC_LOW_ADDR (scalar_t__) ;
 scalar_t__ TARGET_BYTE_ORDER ;
 scalar_t__ bfd_mach_mips16 ;
 int bfd_target_elf_flavour ;
 int current_gdbarch ;
 struct gdbarch_tdep* gdbarch_tdep (int ) ;
 int make_mips16_addr (int) ;
 scalar_t__ non_heuristic_proc_desc (int ,int *) ;
 scalar_t__ pc_is_mips16 (int) ;
 int print_insn_big_mips (int,struct disassemble_info*) ;
 int print_insn_little_mips (int,struct disassemble_info*) ;

__attribute__((used)) static int
gdb_print_insn_mips (bfd_vma memaddr, struct disassemble_info *info)
{
  struct gdbarch_tdep *tdep = gdbarch_tdep (current_gdbarch);
  mips_extra_func_info_t proc_desc;






  memaddr = ADDR_BITS_REMOVE (memaddr);
  proc_desc = non_heuristic_proc_desc (make_mips16_addr (memaddr), ((void*)0));
  if (proc_desc)
    {
      if (pc_is_mips16 (PROC_LOW_ADDR (proc_desc)))
 info->mach = bfd_mach_mips16;
    }
  else
    {
      if (pc_is_mips16 (memaddr))
 info->mach = bfd_mach_mips16;
    }


  memaddr &= (info->mach == bfd_mach_mips16 ? ~1 : ~3);


  if (tdep->mips_abi == MIPS_ABI_N32 || tdep->mips_abi == MIPS_ABI_N64)
    {


      if (tdep->mips_abi == MIPS_ABI_N32)
 info->disassembler_options = "gpr-names=n32";
      else
 info->disassembler_options = "gpr-names=64";
      info->flavour = bfd_target_elf_flavour;
    }
  else





    info->disassembler_options = "gpr-names=32";


  if (TARGET_BYTE_ORDER == BFD_ENDIAN_BIG)
    return print_insn_big_mips (memaddr, info);
  else
    return print_insn_little_mips (memaddr, info);
}
