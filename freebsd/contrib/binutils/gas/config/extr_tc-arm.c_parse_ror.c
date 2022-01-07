
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {void* error; } ;


 int FAIL ;
 int FALSE ;
 void* _ (char*) ;
 TYPE_1__ inst ;
 int parse_immediate (char**,int*,int ,int,int ) ;
 scalar_t__ strncasecmp (char*,char*,int) ;

__attribute__((used)) static int
parse_ror (char **str)
{
  int rot;
  char *s = *str;

  if (strncasecmp (s, "ROR", 3) == 0)
    s += 3;
  else
    {
      inst.error = _("missing rotation field after comma");
      return FAIL;
    }

  if (parse_immediate (&s, &rot, 0, 24, FALSE) == FAIL)
    return FAIL;

  switch (rot)
    {
    case 0: *str = s; return 0x0;
    case 8: *str = s; return 0x1;
    case 16: *str = s; return 0x2;
    case 24: *str = s; return 0x3;

    default:
      inst.error = _("rotation can only be 0, 8, 16, or 24");
      return FAIL;
    }
}
