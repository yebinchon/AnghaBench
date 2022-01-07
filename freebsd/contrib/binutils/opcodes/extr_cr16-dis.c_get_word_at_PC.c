
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ wordU ;
struct disassemble_info {int (* read_memory_func ) (int ,int *,int,struct disassemble_info*) ;} ;
typedef int bfd_vma ;
typedef int bfd_byte ;


 scalar_t__ bfd_getl16 (int *) ;
 int stub1 (int ,int *,int,struct disassemble_info*) ;

__attribute__((used)) static wordU
get_word_at_PC (bfd_vma memaddr, struct disassemble_info *info)
{
  bfd_byte buffer[4];
  int status;
  wordU insn = 0;

  status = info->read_memory_func (memaddr, buffer, 2, info);

  if (status == 0)
    insn = (wordU) bfd_getl16 (buffer);

  return insn;
}
