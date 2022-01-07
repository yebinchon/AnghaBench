
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {unsigned long* sig; } ;
typedef TYPE_1__ REAL_VALUE_TYPE ;


 int SIGSZ ;

__attribute__((used)) static inline int
cmp_significands (const REAL_VALUE_TYPE *a, const REAL_VALUE_TYPE *b)
{
  int i;

  for (i = SIGSZ - 1; i >= 0; --i)
    {
      unsigned long ai = a->sig[i];
      unsigned long bi = b->sig[i];

      if (ai > bi)
 return 1;
      if (ai < bi)
 return -1;
    }

  return 0;
}
