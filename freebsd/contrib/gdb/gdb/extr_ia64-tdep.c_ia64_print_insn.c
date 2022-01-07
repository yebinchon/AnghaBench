
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct disassemble_info {int bytes_per_line; } ;
typedef int bfd_vma ;


 int SLOT_MULTIPLIER ;
 int print_insn_ia64 (int ,struct disassemble_info*) ;

__attribute__((used)) static int
ia64_print_insn (bfd_vma memaddr, struct disassemble_info *info)
{
  info->bytes_per_line = SLOT_MULTIPLIER;
  return print_insn_ia64 (memaddr, info);
}
