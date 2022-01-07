
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bfd_vma ;



__attribute__((used)) static int
identify_add_or_sub(bfd_vma insn)
{
  int opcode = insn & 0x1e00000;

  if (opcode == 1 << 23)
    return 1;

  if (opcode == 1 << 22)
    return -1;

  return 0;
}
