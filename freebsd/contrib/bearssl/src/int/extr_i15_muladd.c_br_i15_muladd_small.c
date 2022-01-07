
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int uint16_t ;


 int EQ (int,int) ;
 int GT (int,int) ;
 int LT (int,int) ;
 int MUL15 (int,int) ;
 int MUX (int ,int,int) ;
 int br_i15_add (int*,int const*,int) ;
 int br_i15_sub (int*,int const*,int) ;
 int divrem16 (int,int const,int*) ;
 int memmove (int*,int*,size_t) ;

void
br_i15_muladd_small(uint16_t *x, uint16_t z, const uint16_t *m)
{




 unsigned m_bitlen, mblr;
 size_t u, mlen;
 uint32_t hi, a0, a, b, q;
 uint32_t cc, tb, over, under;




 m_bitlen = m[0];
 if (m_bitlen == 0) {
  return;
 }
 if (m_bitlen <= 15) {
  uint32_t rem;

  divrem16(((uint32_t)x[1] << 15) | z, m[1], &rem);
  x[1] = rem;
  return;
 }
 mlen = (m_bitlen + 15) >> 4;
 mblr = m_bitlen & 15;
 hi = x[mlen];
 if (mblr == 0) {
  a0 = x[mlen];
  memmove(x + 2, x + 1, (mlen - 1) * sizeof *x);
  x[1] = z;
  a = (a0 << 15) + x[mlen];
  b = m[mlen];
 } else {
  a0 = (x[mlen] << (15 - mblr)) | (x[mlen - 1] >> mblr);
  memmove(x + 2, x + 1, (mlen - 1) * sizeof *x);
  x[1] = z;
  a = (a0 << 15) | (((x[mlen] << (15 - mblr))
   | (x[mlen - 1] >> mblr)) & 0x7FFF);
  b = (m[mlen] << (15 - mblr)) | (m[mlen - 1] >> mblr);
 }
 q = divrem16(a, b, ((void*)0));
 q = MUX(EQ(b, a0), 0x7FFF, q - 1 + ((q - 1) >> 31));
 cc = 0;
 tb = 1;
 for (u = 1; u <= mlen; u ++) {
  uint32_t mw, zl, xw, nxw;

  mw = m[u];
  zl = MUL15(mw, q) + cc;
  cc = zl >> 15;
  zl &= 0x7FFF;
  xw = x[u];
  nxw = xw - zl;
  cc += nxw >> 31;
  nxw &= 0x7FFF;
  x[u] = nxw;
  tb = MUX(EQ(nxw, mw), tb, GT(nxw, mw));
 }
 over = GT(cc, hi);
 under = ~over & (tb | LT(cc, hi));
 br_i15_add(x, m, over);
 br_i15_sub(x, m, under);
}
