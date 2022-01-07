
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_1__ ;


typedef int uhwi ;
struct TYPE_12__ {int exp; scalar_t__ sig_lo; scalar_t__ sig; scalar_t__ sig_hi; } ;
typedef TYPE_1__ sreal ;


 int SREAL_BITS ;
 int SREAL_PART_BITS ;
 int copy (TYPE_1__*,TYPE_1__*) ;
 int gcc_assert (int) ;
 int normalize (TYPE_1__*) ;
 int shift_right (TYPE_1__*,int) ;
 scalar_t__ sreal_compare (TYPE_1__*,TYPE_1__*) ;

sreal *
sreal_sub (sreal *r, sreal *a, sreal *b)
{
  int dexp;
  sreal tmp;
  sreal *bb;

  gcc_assert (sreal_compare (a, b) >= 0);

  dexp = a->exp - b->exp;
  r->exp = a->exp;
  if (dexp > SREAL_BITS)
    {

      r->sig_hi = a->sig_hi;
      r->sig_lo = a->sig_lo;



      return r;
    }
  if (dexp == 0)
    bb = b;
  else
    {
      copy (&tmp, b);
      shift_right (&tmp, dexp);
      bb = &tmp;
    }


  if (a->sig_lo < bb->sig_lo)
    {
      r->sig_hi = a->sig_hi - bb->sig_hi - 1;
      r->sig_lo = a->sig_lo + ((uhwi) 1 << SREAL_PART_BITS) - bb->sig_lo;
    }
  else
    {
      r->sig_hi = a->sig_hi - bb->sig_hi;
      r->sig_lo = a->sig_lo - bb->sig_lo;
    }



  normalize (r);
  return r;
}
