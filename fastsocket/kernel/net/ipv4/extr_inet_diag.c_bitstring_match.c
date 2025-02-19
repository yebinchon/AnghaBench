
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __be32 ;


 int htonl (int) ;
 scalar_t__ memcmp (int const*,int const*,int) ;

__attribute__((used)) static int bitstring_match(const __be32 *a1, const __be32 *a2, int bits)
{
 int words = bits >> 5;

 bits &= 0x1f;

 if (words) {
  if (memcmp(a1, a2, words << 2))
   return 0;
 }
 if (bits) {
  __be32 w1, w2;
  __be32 mask;

  w1 = a1[words];
  w2 = a2[words];

  mask = htonl((0xffffffff) << (32 - bits));

  if ((w1 ^ w2) & mask)
   return 0;
 }

 return 1;
}
