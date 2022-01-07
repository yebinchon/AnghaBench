
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct disassemble_info {int dummy; } ;
typedef int bfd_vma ;


 int FALSE ;
 int print_insn (int ,struct disassemble_info*,int ) ;

int
print_insn_big_score (bfd_vma pc, struct disassemble_info *info)
{
  return print_insn (pc, info, FALSE);
}
