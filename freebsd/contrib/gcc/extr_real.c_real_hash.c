
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int cl; int sign; unsigned long* sig; int canonical; int signalling; } ;
typedef TYPE_1__ REAL_VALUE_TYPE ;


 int HOST_BITS_PER_LONG ;
 int REAL_EXP (TYPE_1__ const*) ;
 size_t SIGSZ ;
 int gcc_unreachable () ;





unsigned int
real_hash (const REAL_VALUE_TYPE *r)
{
  unsigned int h;
  size_t i;

  h = r->cl | (r->sign << 2);
  switch (r->cl)
    {
    case 128:
    case 131:
      return h;

    case 129:
      h |= REAL_EXP (r) << 3;
      break;

    case 130:
      if (r->signalling)
 h ^= (unsigned int)-1;
      if (r->canonical)
 return h;
      break;

    default:
      gcc_unreachable ();
    }

  if (sizeof(unsigned long) > sizeof(unsigned int))
    for (i = 0; i < SIGSZ; ++i)
      {
 unsigned long s = r->sig[i];
 h ^= s ^ (s >> (HOST_BITS_PER_LONG / 2));
      }
  else
    for (i = 0; i < SIGSZ; ++i)
      h ^= r->sig[i];

  return h;
}
