
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {void* error; } ;


 void* BAD_SKIP_COMMA ;
 scalar_t__ FAIL ;
 int SUCCESS ;
 TYPE_1__ inst ;

__attribute__((used)) static int
skip_past_comma (char **str)
{
  char *p = *str;
  char c;
  int comma = 0;

  while ((c = *p) == ' ' || c == ',')
    {
      p++;
      if (c == ',' && comma++)
        {
          inst.error = BAD_SKIP_COMMA;
          return (int) FAIL;
        }
    }

  if ((c == '\0') || (comma == 0))
    {
      inst.error = BAD_SKIP_COMMA;
      return (int) FAIL;
    }

  *str = p;
  return comma ? SUCCESS : (int) FAIL;
}
