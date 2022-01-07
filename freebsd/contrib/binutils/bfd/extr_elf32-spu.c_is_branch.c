
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bfd_boolean ;



__attribute__((used)) static bfd_boolean
is_branch (const unsigned char *insn)
{
  return (insn[0] & 0xec) == 0x20 && (insn[1] & 0x80) == 0;
}
