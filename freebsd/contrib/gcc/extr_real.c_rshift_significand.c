
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {unsigned int* sig; } ;
typedef TYPE_1__ REAL_VALUE_TYPE ;


 unsigned int HOST_BITS_PER_LONG ;
 unsigned int SIGSZ ;

__attribute__((used)) static void
rshift_significand (REAL_VALUE_TYPE *r, const REAL_VALUE_TYPE *a,
      unsigned int n)
{
  unsigned int i, ofs = n / HOST_BITS_PER_LONG;

  n &= HOST_BITS_PER_LONG - 1;
  if (n != 0)
    {
      for (i = 0; i < SIGSZ; ++i)
 {
   r->sig[i]
     = (((ofs + i >= SIGSZ ? 0 : a->sig[ofs + i]) >> n)
        | ((ofs + i + 1 >= SIGSZ ? 0 : a->sig[ofs + i + 1])
    << (HOST_BITS_PER_LONG - n)));
 }
    }
  else
    {
      for (i = 0; ofs + i < SIGSZ; ++i)
 r->sig[i] = a->sig[ofs + i];
      for (; i < SIGSZ; ++i)
 r->sig[i] = 0;
    }
}
