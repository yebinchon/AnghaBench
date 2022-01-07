
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct disassemble_info {int dummy; } ;
typedef int bfd_vma ;


 int TRUE ;
 int print_insn (int ,struct disassemble_info*,int ) ;

int
print_insn_little_arm (bfd_vma pc, struct disassemble_info *info)
{
  return print_insn (pc, info, TRUE);
}
