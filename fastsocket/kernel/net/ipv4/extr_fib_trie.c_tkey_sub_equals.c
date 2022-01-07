
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int t_key ;


 int KEYLENGTH ;

__attribute__((used)) static inline int tkey_sub_equals(t_key a, int offset, int bits, t_key b)
{
 if (bits == 0 || offset >= KEYLENGTH)
  return 1;
 bits = bits > KEYLENGTH ? KEYLENGTH : bits;
 return ((a ^ b) << offset) >> (KEYLENGTH - bits) == 0;
}
