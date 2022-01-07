
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;
struct TYPE_4__ {int* sig; } ;
typedef TYPE_1__ REAL_VALUE_TYPE ;





 int decimal_real_from_string (TYPE_1__*,char*) ;
 int gcc_unreachable () ;

void
decimal_real_maxval (REAL_VALUE_TYPE *r, int sign, enum machine_mode mode)
{
  char *max;

  switch (mode)
    {
    case 129:
      max = (char *) "9.999999E96";
      break;
    case 130:
      max = (char *) "9.999999999999999E384";
      break;
    case 128:
      max = (char *) "9.999999999999999999999999999999999E6144";
      break;
    default:
      gcc_unreachable ();
    }

  decimal_real_from_string (r, max);
  if (sign)
    r->sig[0] |= 0x80000000;
}
