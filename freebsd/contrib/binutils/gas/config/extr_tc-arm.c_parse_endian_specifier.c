
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {void* error; } ;


 int FAIL ;
 scalar_t__ ISALNUM (char) ;
 void* _ (char*) ;
 TYPE_1__ inst ;
 scalar_t__ strncasecmp (char*,char*,int) ;

__attribute__((used)) static int
parse_endian_specifier (char **str)
{
  int little_endian;
  char *s = *str;

  if (strncasecmp (s, "BE", 2))
    little_endian = 0;
  else if (strncasecmp (s, "LE", 2))
    little_endian = 1;
  else
    {
      inst.error = _("valid endian specifiers are be or le");
      return FAIL;
    }

  if (ISALNUM (s[2]) || s[2] == '_')
    {
      inst.error = _("valid endian specifiers are be or le");
      return FAIL;
    }

  *str = s + 2;
  return little_endian;
}
