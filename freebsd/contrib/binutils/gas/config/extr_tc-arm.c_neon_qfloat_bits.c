
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static unsigned
neon_qfloat_bits (unsigned imm)
{
  return ((imm >> 19) & 0x7f) | ((imm >> 24) & 0x80);
}
