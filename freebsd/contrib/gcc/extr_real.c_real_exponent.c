
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int cl; } ;
typedef TYPE_1__ REAL_VALUE_TYPE ;


 int REAL_EXP (TYPE_1__ const*) ;
 int gcc_unreachable () ;





int
real_exponent (const REAL_VALUE_TYPE *r)
{
  switch (r->cl)
    {
    case 128:
      return 0;
    case 131:
    case 130:
      return (unsigned int)-1 >> 1;
    case 129:
      return REAL_EXP (r);
    default:
      gcc_unreachable ();
    }
}
