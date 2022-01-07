
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uhwi ;
struct TYPE_3__ {scalar_t__ exp; int sig_hi; int sig_lo; int sig; } ;
typedef TYPE_1__ sreal ;


 int SREAL_BITS ;
 scalar_t__ SREAL_MAX_EXP ;
 int SREAL_PART_BITS ;
 int gcc_assert (int) ;

__attribute__((used)) static inline void
shift_right (sreal *x, int s)
{
  gcc_assert (s > 0);
  gcc_assert (s <= SREAL_BITS);



  gcc_assert (x->exp + s <= SREAL_MAX_EXP);

  x->exp += s;


  if (s > SREAL_PART_BITS)
    {
      s -= SREAL_PART_BITS;
      x->sig_hi += (uhwi) 1 << (s - 1);
      x->sig_lo = x->sig_hi >> s;
      x->sig_hi = 0;
    }
  else
    {
      x->sig_lo += (uhwi) 1 << (s - 1);
      if (x->sig_lo & ((uhwi) 1 << SREAL_PART_BITS))
 {
   x->sig_hi++;
   x->sig_lo -= (uhwi) 1 << SREAL_PART_BITS;
 }
      x->sig_lo >>= s;
      x->sig_lo |= (x->sig_hi & (((uhwi) 1 << s) - 1)) << (SREAL_PART_BITS - s);
      x->sig_hi >>= s;
    }




}
