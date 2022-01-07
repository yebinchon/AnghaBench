
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int flag_dump_includes ;
 char flag_dump_macros ;

__attribute__((used)) static void
handle_OPT_d (const char *arg)
{
  char c;

  while ((c = *arg++) != '\0')
    switch (c)
      {
      case 'M':
      case 'N':
      case 'D':
 flag_dump_macros = c;
 break;

      case 'I':
 flag_dump_includes = 1;
 break;
      }
}
