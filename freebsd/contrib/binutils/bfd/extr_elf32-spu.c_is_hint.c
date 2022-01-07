
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bfd_boolean ;



__attribute__((used)) static bfd_boolean
is_hint (const unsigned char *insn)
{
  return (insn[0] & 0xfc) == 0x10;
}
