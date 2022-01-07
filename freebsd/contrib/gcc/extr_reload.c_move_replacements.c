
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int rtx ;
struct TYPE_2__ {int * subreg_loc; int * where; } ;


 int n_replacements ;
 TYPE_1__* replacements ;

void
move_replacements (rtx *x, rtx *y)
{
  int i;

  for (i = 0; i < n_replacements; i++)
    if (replacements[i].subreg_loc == x)
      replacements[i].subreg_loc = y;
    else if (replacements[i].where == x)
      {
 replacements[i].where = y;
 replacements[i].subreg_loc = 0;
      }
}
