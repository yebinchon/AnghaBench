
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef long CORE_ADDR ;


 long itype_immediate (unsigned long) ;

__attribute__((used)) static CORE_ADDR
mips32_relative_offset (unsigned long inst)
{
  long x;
  x = itype_immediate (inst);
  if (x & 0x8000)
    {
      x |= 0xffff0000;
    }
  x = x << 2;
  return x;
}
