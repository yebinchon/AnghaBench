
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ gidtb_start () ;
 scalar_t__ uidtb_start () ;

int
ustar_stwr(void)
{
 if ((uidtb_start() < 0) || (gidtb_start() < 0))
  return(-1);
 return(0);
}
