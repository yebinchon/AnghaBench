
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CGEN_INSN ;


 unsigned int CGEN_INSN_BASE_MASK (int const*) ;

__attribute__((used)) static int
count_decodable_bits (const CGEN_INSN *insn)
{
  unsigned mask = CGEN_INSN_BASE_MASK (insn);
  int bits = 0;
  int m;
  for (m = 1; m != 0; m <<= 1)
    {
      if (mask & m)
 ++bits;
    }
  return bits;
}
