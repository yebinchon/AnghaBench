
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef scalar_t__ s32 ;


 unsigned char PM2_REFERENCE_CLOCK ;

__attribute__((used)) static void pm2_mnp(u32 clk, unsigned char *mm, unsigned char *nn,
      unsigned char *pp)
{
 unsigned char m;
 unsigned char n;
 unsigned char p;
 u32 f;
 s32 curr;
 s32 delta = 100000;

 *mm = *nn = *pp = 0;
 for (n = 2; n < 15; n++) {
  for (m = 2; m; m++) {
   f = PM2_REFERENCE_CLOCK * m / n;
   if (f >= 150000 && f <= 300000) {
    for (p = 0; p < 5; p++, f >>= 1) {
     curr = (clk > f) ? clk - f : f - clk;
     if (curr < delta) {
      delta = curr;
      *mm = m;
      *nn = n;
      *pp = p;
     }
    }
   }
  }
 }
}
