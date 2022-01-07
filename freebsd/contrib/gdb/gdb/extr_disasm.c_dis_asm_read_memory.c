
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct disassemble_info {int dummy; } ;
typedef int bfd_vma ;
typedef int bfd_byte ;


 int target_read_memory (int ,char*,unsigned int) ;

__attribute__((used)) static int
dis_asm_read_memory (bfd_vma memaddr, bfd_byte *myaddr, unsigned int len,
       struct disassemble_info *info)
{
  return target_read_memory (memaddr, (char *) myaddr, len);
}
