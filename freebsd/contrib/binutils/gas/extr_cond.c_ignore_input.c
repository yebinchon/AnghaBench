
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ ignoring; } ;


 scalar_t__ NO_PSEUDO_DOT ;
 TYPE_1__* current_cframe ;
 scalar_t__ flag_m68k_mri ;
 char* input_line_pointer ;
 int strncasecmp (char*,char*,int) ;

int
ignore_input (void)
{
  char *s;

  s = input_line_pointer;

  if (NO_PSEUDO_DOT || flag_m68k_mri)
    {
      if (s[-1] != '.')
 --s;
    }
  else
    {
      if (s[-1] != '.')
 return (current_cframe != ((void*)0)) && (current_cframe->ignoring);
    }


  if (((s[0] == 'i'
 || s[0] == 'I')
       && (!strncasecmp (s, "if", 2)
    || !strncasecmp (s, "ifdef", 5)
    || !strncasecmp (s, "ifndef", 6)))
      || ((s[0] == 'e'
    || s[0] == 'E')
   && (!strncasecmp (s, "else", 4)
       || !strncasecmp (s, "endif", 5)
       || !strncasecmp (s, "endc", 4))))
    return 0;

  return (current_cframe != ((void*)0)) && (current_cframe->ignoring);
}
