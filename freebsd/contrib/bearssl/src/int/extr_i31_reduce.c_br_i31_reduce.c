
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int br_i31_muladd_small (int*,int const,int const*) ;
 int memcpy (int*,int const*,size_t) ;

void
br_i31_reduce(uint32_t *x, const uint32_t *a, const uint32_t *m)
{
 uint32_t m_bitlen, a_bitlen;
 size_t mlen, alen, u;

 m_bitlen = m[0];
 mlen = (m_bitlen + 31) >> 5;

 x[0] = m_bitlen;
 if (m_bitlen == 0) {
  return;
 }





 a_bitlen = a[0];
 alen = (a_bitlen + 31) >> 5;
 if (a_bitlen < m_bitlen) {
  memcpy(x + 1, a + 1, alen * sizeof *a);
  for (u = alen; u < mlen; u ++) {
   x[u + 1] = 0;
  }
  return;
 }






 memcpy(x + 1, a + 2 + (alen - mlen), (mlen - 1) * sizeof *a);
 x[mlen] = 0;
 for (u = 1 + alen - mlen; u > 0; u --) {
  br_i31_muladd_small(x, a[u], m);
 }
}
