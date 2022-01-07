
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct disassemble_info {char* disassembler_options; int mach; } ;
typedef int bfd_vma ;
struct TYPE_2__ {int mach; } ;


 scalar_t__ att_flavor ;
 int current_gdbarch ;
 scalar_t__ disassembly_flavor ;
 int gdb_assert (int) ;
 TYPE_1__* gdbarch_bfd_arch_info (int ) ;
 scalar_t__ intel_flavor ;
 int print_insn_i386 (int ,struct disassemble_info*) ;

__attribute__((used)) static int
i386_print_insn (bfd_vma pc, struct disassemble_info *info)
{
  gdb_assert (disassembly_flavor == att_flavor
       || disassembly_flavor == intel_flavor);



  info->disassembler_options = (char *) disassembly_flavor;
  info->mach = gdbarch_bfd_arch_info (current_gdbarch)->mach;

  return print_insn_i386 (pc, info);
}
