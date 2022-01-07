
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__* sig; } ;
typedef TYPE_1__ REAL_VALUE_TYPE ;


 int SIGSZ ;

__attribute__((used)) static inline int
cmp_significand_0 (const REAL_VALUE_TYPE *a)
{
  int i;

  for (i = SIGSZ - 1; i >= 0; --i)
    if (a->sig[i])
      return 1;

  return 0;
}
