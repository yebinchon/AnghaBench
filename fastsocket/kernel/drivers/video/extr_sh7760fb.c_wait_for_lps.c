
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sh7760fb_par {scalar_t__ base; } ;


 int ETIMEDOUT ;
 scalar_t__ LDPMMR ;
 int ioread16 (scalar_t__) ;
 int msleep (int) ;

__attribute__((used)) static int wait_for_lps(struct sh7760fb_par *par, int val)
{
 int i = 100;
 while (--i && ((ioread16(par->base + LDPMMR) & 3) != val))
  msleep(1);

 if (i <= 0)
  return -ETIMEDOUT;

 return 0;
}
