
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct disassemble_info {int stream; } ;
typedef int bfd_vma ;


 int print_address (int ,int ) ;

__attribute__((used)) static void
dis_asm_print_address (bfd_vma addr, struct disassemble_info *info)
{
  print_address (addr, info->stream);
}
