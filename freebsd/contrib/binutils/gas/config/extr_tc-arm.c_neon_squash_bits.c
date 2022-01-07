
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static unsigned
neon_squash_bits (unsigned imm)
{
  return (imm & 0x01) | ((imm & 0x0100) >> 7) | ((imm & 0x010000) >> 14)
         | ((imm & 0x01000000) >> 21);
}
