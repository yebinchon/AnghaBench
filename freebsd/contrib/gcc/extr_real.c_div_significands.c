
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_13__ {unsigned long* sig; } ;
typedef TYPE_1__ REAL_VALUE_TYPE ;


 int SIGNIFICAND_BITS ;
 int SIGSZ ;
 unsigned long SIG_MSB ;
 scalar_t__ cmp_significands (TYPE_1__*,TYPE_1__ const*) ;
 int lshift_significand_1 (TYPE_1__*,TYPE_1__*) ;
 int memset (unsigned long*,int ,int) ;
 int set_significand_bit (TYPE_1__*,int) ;
 int sub_significands (TYPE_1__*,TYPE_1__*,TYPE_1__ const*,int ) ;

__attribute__((used)) static inline bool
div_significands (REAL_VALUE_TYPE *r, const REAL_VALUE_TYPE *a,
    const REAL_VALUE_TYPE *b)
{
  REAL_VALUE_TYPE u;
  int i, bit = SIGNIFICAND_BITS - 1;
  unsigned long msb, inexact;

  u = *a;
  memset (r->sig, 0, sizeof (r->sig));

  msb = 0;
  goto start;
  do
    {
      msb = u.sig[SIGSZ-1] & SIG_MSB;
      lshift_significand_1 (&u, &u);
    start:
      if (msb || cmp_significands (&u, b) >= 0)
 {
   sub_significands (&u, &u, b, 0);
   set_significand_bit (r, bit);
 }
    }
  while (--bit >= 0);

  for (i = 0, inexact = 0; i < SIGSZ; i++)
    inexact |= u.sig[i];

  return inexact != 0;
}
