
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int t_key ;


 int KEYLENGTH ;

__attribute__((used)) static inline t_key tkey_extract_bits(t_key a, int offset, int bits)
{
 if (offset < KEYLENGTH)
  return ((t_key)(a << offset)) >> (KEYLENGTH - bits);
 else
  return 0;
}
