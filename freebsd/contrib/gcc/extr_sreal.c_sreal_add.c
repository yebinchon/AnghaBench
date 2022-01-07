
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_1__ ;


typedef int uhwi ;
struct TYPE_12__ {int exp; int sig_lo; scalar_t__ sig; scalar_t__ sig_hi; } ;
typedef TYPE_1__ sreal ;


 int SREAL_BITS ;
 int SREAL_PART_BITS ;
 int copy (TYPE_1__*,TYPE_1__*) ;
 int normalize (TYPE_1__*) ;
 int shift_right (TYPE_1__*,int) ;
 scalar_t__ sreal_compare (TYPE_1__*,TYPE_1__*) ;

sreal *
sreal_add (sreal *r, sreal *a, sreal *b)
{
  int dexp;
  sreal tmp;
  sreal *bb;

  if (sreal_compare (a, b) < 0)
    {
      sreal *swap;
      swap = a;
      a = b;
      b = swap;
    }

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


  r->sig_hi = a->sig_hi + bb->sig_hi;
  r->sig_lo = a->sig_lo + bb->sig_lo;
  if (r->sig_lo & ((uhwi) 1 << SREAL_PART_BITS))
    {
      r->sig_hi++;
      r->sig_lo -= (uhwi) 1 << SREAL_PART_BITS;
    }



  normalize (r);
  return r;
}
