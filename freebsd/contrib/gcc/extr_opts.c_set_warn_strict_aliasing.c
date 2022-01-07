
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int gcc_assert (int) ;
 int warn_strict_aliasing ;

void
set_warn_strict_aliasing (int onoff)
{
  gcc_assert (onoff == 0 || onoff == 1);
  if (onoff != 0)
    warn_strict_aliasing = 3;
}
