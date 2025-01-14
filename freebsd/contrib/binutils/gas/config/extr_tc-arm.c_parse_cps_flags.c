
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {void* error; } ;


 int FAIL ;
 void* _ (char*) ;
 TYPE_1__ inst ;

__attribute__((used)) static int
parse_cps_flags (char **str)
{
  int val = 0;
  int saw_a_flag = 0;
  char *s = *str;

  for (;;)
    switch (*s++)
      {
      case '\0': case ',':
 goto done;

      case 'a': case 'A': saw_a_flag = 1; val |= 0x4; break;
      case 'i': case 'I': saw_a_flag = 1; val |= 0x2; break;
      case 'f': case 'F': saw_a_flag = 1; val |= 0x1; break;

      default:
 inst.error = _("unrecognized CPS flag");
 return FAIL;
      }

 done:
  if (saw_a_flag == 0)
    {
      inst.error = _("missing CPS flags");
      return FAIL;
    }

  *str = s - 1;
  return val;
}
