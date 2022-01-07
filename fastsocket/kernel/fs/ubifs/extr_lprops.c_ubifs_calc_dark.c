
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubifs_info {int dark_wm; } ;


 int MIN_WRITE_SZ ;
 int ubifs_assert (int) ;

int ubifs_calc_dark(const struct ubifs_info *c, int spc)
{
 ubifs_assert(!(spc & 7));

 if (spc < c->dark_wm)
  return spc;






 if (spc - c->dark_wm < MIN_WRITE_SZ)
  return spc - MIN_WRITE_SZ;

 return c->dark_wm;
}
