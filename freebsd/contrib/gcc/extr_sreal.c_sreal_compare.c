
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ exp; scalar_t__ sig_hi; scalar_t__ sig_lo; scalar_t__ sig; } ;
typedef TYPE_1__ sreal ;



int
sreal_compare (sreal *a, sreal *b)
{
  if (a->exp > b->exp)
    return 1;
  if (a->exp < b->exp)
    return -1;

  if (a->sig_hi > b->sig_hi)
    return 1;
  if (a->sig_hi < b->sig_hi)
    return -1;
  if (a->sig_lo > b->sig_lo)
    return 1;
  if (a->sig_lo < b->sig_lo)
    return -1;






  return 0;
}
