
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ grptb_start () ;
 scalar_t__ usrtb_start () ;

int
ustar_strd(void)
{
 if ((usrtb_start() < 0) || (grptb_start() < 0))
  return(-1);
 return(0);
}
