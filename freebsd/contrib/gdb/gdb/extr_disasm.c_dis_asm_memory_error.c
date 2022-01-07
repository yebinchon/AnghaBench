
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct disassemble_info {int dummy; } ;
typedef int bfd_vma ;


 int memory_error (int,int ) ;

__attribute__((used)) static void
dis_asm_memory_error (int status, bfd_vma memaddr,
        struct disassemble_info *info)
{
  memory_error (status, memaddr);
}
