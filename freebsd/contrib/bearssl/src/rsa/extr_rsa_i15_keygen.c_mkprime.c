
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int uint16_t ;
typedef int br_prng_class ;


 int GT (int,int) ;
 scalar_t__ miller_rabin (int const**,int*,int,int*,size_t) ;
 int mkrand (int const**,int*,int) ;
 int trial_divisions (int*,int*) ;

__attribute__((used)) static void
mkprime(const br_prng_class **rng, uint16_t *x, uint32_t esize,
 uint32_t pubexp, uint16_t *t, size_t tlen)
{
 size_t len;

 x[0] = esize;
 len = (esize + 15) >> 4;
 for (;;) {
  size_t u;
  uint32_t m3, m5, m7, m11;
  int rounds;





  mkrand(rng, x, esize);
  if ((esize & 15) == 0) {
   x[len] |= 0x6000;
  } else if ((esize & 15) == 1) {
   x[len] |= 0x0001;
   x[len - 1] |= 0x4000;
  } else {
   x[len] |= 0x0003 << ((esize & 15) - 2);
  }
  x[1] |= 0x0003;
  m3 = 0;
  m5 = 0;
  m7 = 0;
  m11 = 0;
  for (u = 0; u < len; u ++) {
   uint32_t w;

   w = x[1 + u];
   m3 += w << (u & 1);
   m3 = (m3 & 0xFF) + (m3 >> 8);
   m5 += w << ((4 - u) & 3);
   m5 = (m5 & 0xFF) + (m5 >> 8);
   m7 += w;
   m7 = (m7 & 0x1FF) + (m7 >> 9);
   m11 += w << (5 & -(u & 1));
   m11 = (m11 & 0x3FF) + (m11 >> 10);
  }
  m3 = (m3 & 0x0F) + (m3 >> 4);
  m3 = (m3 & 0x0F) + (m3 >> 4);
  m3 = ((m3 * 43) >> 5) & 3;

  m5 = (m5 & 0xFF) + (m5 >> 8);
  m5 = (m5 & 0x0F) + (m5 >> 4);
  m5 = (m5 & 0x0F) + (m5 >> 4);
  m5 -= 10 & -GT(m5, 9);
  m5 -= 5 & -GT(m5, 4);

  m7 = (m7 & 0x3F) + (m7 >> 6);
  m7 = (m7 & 7) + (m7 >> 3);
  m7 = ((m7 * 147) >> 7) & 7;




  m11 = (m11 & 0x1F) + 66 - (m11 >> 5);
  m11 -= 88 & -GT(m11, 87);
  m11 -= 44 & -GT(m11, 43);
  m11 -= 22 & -GT(m11, 21);
  m11 -= 11 & -GT(m11, 10);
  if (m3 == 0 || m5 == 0 || m7 == 0 || m11 == 0) {
   continue;
  }
  if ((pubexp == 3 && m3 == 1)
   || (pubexp == 5 && m5 == 5)
   || (pubexp == 7 && m5 == 7)
   || (pubexp == 11 && m5 == 11))
  {
   continue;
  }




  if (!trial_divisions(x, t)) {
   continue;
  }
  if (esize < 320) {
   rounds = 12;
  } else if (esize < 480) {
   rounds = 9;
  } else if (esize < 693) {
   rounds = 6;
  } else if (esize < 906) {
   rounds = 4;
  } else if (esize < 1386) {
   rounds = 3;
  } else {
   rounds = 2;
  }

  if (miller_rabin(rng, x, rounds, t, tlen)) {
   return;
  }
 }
}
