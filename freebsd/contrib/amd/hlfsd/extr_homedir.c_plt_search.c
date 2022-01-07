
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ uid; } ;
typedef TYPE_1__ uid2home_t ;
typedef scalar_t__ u_int ;


 int cur_pwtab_num ;
 TYPE_1__* pwtab ;

uid2home_t *
plt_search(u_int u)
{
  int max, min, mid;





  if (pwtab == (uid2home_t *) ((void*)0))
    return (uid2home_t *) ((void*)0);

  max = cur_pwtab_num - 1;
  min = 0;

  do {
    mid = (max + min) / 2;
    if (pwtab[mid].uid == u)
      return &pwtab[mid];
    if (pwtab[mid].uid > u)
      max = mid;
    else
      min = mid;
  } while (max > min + 1);

  if (pwtab[max].uid == u)
    return &pwtab[max];
  if (pwtab[min].uid == u)
    return &pwtab[min];


  return (uid2home_t *) ((void*)0);
}
