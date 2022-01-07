
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* ternary_tree ;
struct TYPE_4__ {struct TYPE_4__* hikid; struct TYPE_4__* eqkid; scalar_t__ splitchar; struct TYPE_4__* lokid; } ;


 int free (TYPE_1__*) ;

void
ternary_cleanup (ternary_tree p)
{
  if (p)
    {
      ternary_cleanup (p->lokid);
      if (p->splitchar)
 ternary_cleanup (p->eqkid);
      ternary_cleanup (p->hikid);
      free (p);
    }
}
