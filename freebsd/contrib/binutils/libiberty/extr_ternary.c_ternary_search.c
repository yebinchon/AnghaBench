
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int splitchar; struct TYPE_3__* hikid; struct TYPE_3__* lokid; struct TYPE_3__* eqkid; } ;
typedef TYPE_1__ ternary_node ;
typedef int * PTR ;



PTR
ternary_search (const ternary_node *p, const char *s)
{
  const ternary_node *curr;
  int diff, spchar;
  spchar = *s;
  curr = p;

  while (curr)
    {

      diff = spchar - curr->splitchar;

      if (diff == 0)
 {
   if (spchar == 0)
     return (PTR) curr->eqkid;
   spchar = *++s;
   curr = curr->eqkid;
 }

      else if (diff < 0)
 curr = curr->lokid;

      else
 curr = curr->hikid;
    }
  return ((void*)0);
}
