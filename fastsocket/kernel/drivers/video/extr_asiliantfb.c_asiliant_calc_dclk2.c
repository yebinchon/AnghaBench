
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned char u8 ;
typedef unsigned int u32 ;


 unsigned int Fref ;

__attribute__((used)) static void asiliant_calc_dclk2(u32 *ppixclock, u8 *dclk2_m, u8 *dclk2_n, u8 *dclk2_div)
{
 unsigned pixclock = *ppixclock;
 unsigned Ftarget = 1000000 * (1000000 / pixclock);
 unsigned n;
 unsigned best_error = 0xffffffff;
 unsigned best_m = 0xffffffff,
          best_n = 0xffffffff;
 unsigned ratio;
 unsigned remainder;
 unsigned char divisor = 0;


 ratio = 1000000 / pixclock;
 remainder = 1000000 % pixclock;
 Ftarget = 1000000 * ratio + (1000000 * remainder) / pixclock;

 while (Ftarget < 100000000) {
  divisor += 0x10;
  Ftarget <<= 1;
 }

 ratio = Ftarget / Fref;
 remainder = Ftarget % Fref;



 for (n = 3; n <= 257; n++) {
  unsigned m = n * ratio + (n * remainder) / Fref;


  if (m >= 3 && m <= 257) {
   unsigned new_error = ((Ftarget * n) - (Fref * m)) >= 0 ?
            ((Ftarget * n) - (Fref * m)) : ((Fref * m) - (Ftarget * n));
   if (new_error < best_error) {
    best_n = n;
    best_m = m;
    best_error = new_error;
   }
  }

  else if (m <= 1028) {


   unsigned new_error = ((Ftarget * n) - (Fref * (m & ~3))) >= 0 ?
            ((Ftarget * n) - (Fref * (m & ~3))) : ((Fref * (m & ~3)) - (Ftarget * n));
   if (new_error < best_error) {
    best_n = n;
    best_m = m;
    best_error = new_error;
   }
  }
 }
 if (best_m > 257)
  best_m >>= 2;
 else
  divisor |= 4;
 *dclk2_m = best_m - 2;
 *dclk2_n = best_n - 2;
 *dclk2_div = divisor;
 *ppixclock = pixclock;
 return;
}
