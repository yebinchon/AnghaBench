
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _ (char*) ;
 int as_bad (int ,char) ;

__attribute__((used)) static int
check_cinv_options (char * operand)
{
  char *p = operand;
  int i_used = 0, u_used = 0, d_used = 0;

  while (*++p != ']')
    {
      if (*p == ',' || *p == ' ')
        continue;

      else if (*p == 'i')
        i_used = 1;
      else if (*p == 'u')
        u_used = 1;
      else if (*p == 'd')
        d_used = 1;
      else
        as_bad (_("Illegal `cinv' parameter: `%c'"), *p);
    }

  return 0;
}
