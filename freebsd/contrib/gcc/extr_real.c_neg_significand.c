
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {unsigned long* sig; } ;
typedef TYPE_1__ REAL_VALUE_TYPE ;


 int SIGSZ ;

__attribute__((used)) static inline void
neg_significand (REAL_VALUE_TYPE *r, const REAL_VALUE_TYPE *a)
{
  bool carry = 1;
  int i;

  for (i = 0; i < SIGSZ; ++i)
    {
      unsigned long ri, ai = a->sig[i];

      if (carry)
 {
   if (ai)
     {
       ri = -ai;
       carry = 0;
     }
   else
     ri = ai;
 }
      else
 ri = ~ai;

      r->sig[i] = ri;
    }
}
