
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int
n_sep_els (const char *s, int sep, int par_flag)
{
  int n;
  int pars_num;

  if (*s == '\0')
    return 0;

  for (pars_num = 0, n = 1; *s; s++)
    if (par_flag && *s == '(')
      pars_num++;
    else if (par_flag && *s == ')')
      pars_num--;
    else if (pars_num == 0 && *s == sep)
      n++;

  return (pars_num != 0 ? -1 : n);
}
