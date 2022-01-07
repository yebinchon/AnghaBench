
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CORE_ADDR ;



__attribute__((used)) static CORE_ADDR
add_offset_16 (CORE_ADDR pc, int offset)
{
  return ((offset << 2) | ((pc + 2) & (0xf0000000)));
}
