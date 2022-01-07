
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {unsigned long* sig; } ;
typedef TYPE_1__ REAL_VALUE_TYPE ;


 int SIGSZ ;

__attribute__((used)) static inline bool
add_significands (REAL_VALUE_TYPE *r, const REAL_VALUE_TYPE *a,
    const REAL_VALUE_TYPE *b)
{
  bool carry = 0;
  int i;

  for (i = 0; i < SIGSZ; ++i)
    {
      unsigned long ai = a->sig[i];
      unsigned long ri = ai + b->sig[i];

      if (carry)
 {
   carry = ri < ai;
   carry |= ++ri == 0;
 }
      else
 carry = ri < ai;

      r->sig[i] = ri;
    }

  return carry;
}
