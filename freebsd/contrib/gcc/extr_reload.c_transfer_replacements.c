
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int what; } ;


 int n_replacements ;
 TYPE_1__* replacements ;

void
transfer_replacements (int to, int from)
{
  int i;

  for (i = 0; i < n_replacements; i++)
    if (replacements[i].what == from)
      replacements[i].what = to;
}
