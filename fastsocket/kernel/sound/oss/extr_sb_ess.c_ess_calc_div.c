
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int ess_calc_div (int clock, int revert, int *speedp, int *diffp)
{
 int divider;
 int speed, diff;
 int retval;

 speed = *speedp;
 divider = (clock + speed / 2) / speed;
 retval = revert - divider;
 if (retval > revert - 1) {
  retval = revert - 1;
  divider = revert - retval;
 }




 *speedp = clock / divider;
 diff = speed - *speedp;
 if (diff < 0) diff =-diff;
 *diffp = diff;

 return retval;
}
