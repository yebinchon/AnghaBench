
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int br_prng_class ;
typedef int br_i31_modpow_opt_type ;


 int GT (int,int) ;
 scalar_t__ miller_rabin (int const**,int*,int,int*,size_t,int ) ;
 int mkrand (int const**,int*,int) ;
 int trial_divisions (int*,int*) ;

__attribute__((used)) static void
mkprime(const br_prng_class **rng, uint32_t *x, uint32_t esize,
 uint32_t pubexp, uint32_t *t, size_t tlen, br_i31_modpow_opt_type mp31)
{
 size_t len;

 x[0] = esize;
 len = (esize + 31) >> 5;
 for (;;) {
  size_t u;
  uint32_t m3, m5, m7, m11;
  int rounds, s7, s11;





  mkrand(rng, x, esize);
  if ((esize & 31) == 0) {
   x[len] |= 0x60000000;
  } else if ((esize & 31) == 1) {
   x[len] |= 0x00000001;
   x[len - 1] |= 0x40000000;
  } else {
   x[len] |= 0x00000003 << ((esize & 31) - 2);
  }
  x[1] |= 0x00000003;
  m3 = 0;
  m5 = 0;
  m7 = 0;
  m11 = 0;
  s7 = 0;
  s11 = 0;
  for (u = 0; u < len; u ++) {
   uint32_t w, w3, w5, w7, w11;

   w = x[1 + u];
   w3 = (w & 0xFFFF) + (w >> 16);
   w5 = (w & 0xFFFF) + (w >> 16);
   w7 = (w & 0x7FFF) + (w >> 15);
   w11 = (w & 0xFFFFF) + (w >> 20);

   m3 += w3 << (u & 1);
   m3 = (m3 & 0xFF) + (m3 >> 8);

   m5 += w5 << ((4 - u) & 3);
   m5 = (m5 & 0xFFF) + (m5 >> 12);

   m7 += w7 << s7;
   m7 = (m7 & 0x1FF) + (m7 >> 9);
   if (++ s7 == 3) {
    s7 = 0;
   }

   m11 += w11 << s11;
   if (++ s11 == 10) {
    s11 = 0;
   }
   m11 = (m11 & 0x3FF) + (m11 >> 10);
  }

  m3 = (m3 & 0x3F) + (m3 >> 6);
  m3 = (m3 & 0x0F) + (m3 >> 4);
  m3 = ((m3 * 43) >> 5) & 3;

  m5 = (m5 & 0xFF) + (m5 >> 8);
  m5 = (m5 & 0x0F) + (m5 >> 4);
  m5 -= 20 & -GT(m5, 19);
  m5 -= 10 & -GT(m5, 9);
  m5 -= 5 & -GT(m5, 4);

  m7 = (m7 & 0x3F) + (m7 >> 6);
  m7 = (m7 & 0x07) + (m7 >> 3);
  m7 = ((m7 * 147) >> 7) & 7;




  m11 = (m11 & 0x3FF) + (m11 >> 10);
  m11 = (m11 & 0x3FF) + (m11 >> 10);
  m11 = (m11 & 0x1F) + 33 - (m11 >> 5);
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
  if (esize < 309) {
   rounds = 12;
  } else if (esize < 464) {
   rounds = 9;
  } else if (esize < 670) {
   rounds = 6;
  } else if (esize < 877) {
   rounds = 4;
  } else if (esize < 1341) {
   rounds = 3;
  } else {
   rounds = 2;
  }

  if (miller_rabin(rng, x, rounds, t, tlen, mp31)) {
   return;
  }
 }
}
