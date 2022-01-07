
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int username; } ;


 scalar_t__ STREQ (int ,char*) ;
 int cur_pwtab_num ;
 int strcmp (int ,char*) ;
 TYPE_1__* untab ;

int
untab_index(char *username)
{
  int max, min, mid, cmp;

  max = cur_pwtab_num - 1;
  min = 0;

  do {
    mid = (max + min) / 2;
    cmp = strcmp(untab[mid].username, username);
    if (cmp == 0)
      return mid;
    if (cmp > 0)
      max = mid;
    else
      min = mid;
  } while (max > min + 1);

  if (STREQ(untab[max].username, username))
    return max;
  if (STREQ(untab[min].username, username))
    return min;


  return -1;
}
