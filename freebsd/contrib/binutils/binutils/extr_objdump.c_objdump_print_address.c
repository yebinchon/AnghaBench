
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct disassemble_info {int dummy; } ;
typedef int bfd_vma ;


 int objdump_print_addr (int ,struct disassemble_info*,int) ;
 int prefix_addresses ;

__attribute__((used)) static void
objdump_print_address (bfd_vma vma, struct disassemble_info *info)
{
  objdump_print_addr (vma, info, ! prefix_addresses);
}
