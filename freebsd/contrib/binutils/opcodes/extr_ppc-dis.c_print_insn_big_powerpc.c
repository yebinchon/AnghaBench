
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct disassemble_info {scalar_t__ private_data; } ;
typedef int bfd_vma ;


 int print_insn_powerpc (int ,struct disassemble_info*,int,int) ;

int
print_insn_big_powerpc (bfd_vma memaddr, struct disassemble_info *info)
{
  int dialect = (char *) info->private_data - (char *) 0;
  return print_insn_powerpc (memaddr, info, 1, dialect);
}
