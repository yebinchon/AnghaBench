
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* format; } ;


 unsigned int NUM_RTX_CODE ;
 TYPE_1__* defs ;
 char** formats ;
 scalar_t__ special_format (char*) ;
 int strcmp (char const*,char*) ;

__attribute__((used)) static void
find_formats (void)
{
  unsigned int i;

  for (i = 0; i < NUM_RTX_CODE; i++)
    {
      const char **f;

      if (special_format (defs[i].format))
 continue;

      for (f = formats; *f; f++)
 if (! strcmp (*f, defs[i].format))
   break;

      if (*f == 0)
 *f = defs[i].format;
    }
}
