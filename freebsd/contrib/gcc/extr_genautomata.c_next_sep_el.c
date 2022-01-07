
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ ISSPACE (int) ;
 int irp ;
 int obstack_1grow (int *,char const) ;
 char* obstack_base (int *) ;
 int obstack_finish (int *) ;

__attribute__((used)) static char *
next_sep_el (const char **pstr, int sep, int par_flag)
{
  char *out_str;
  const char *p;
  int pars_num;
  int n_spaces;


  while (ISSPACE ((int) **pstr))
    (*pstr)++;

  if (**pstr == '\0')
    return ((void*)0);

  n_spaces = 0;
  for (pars_num = 0, p = *pstr; *p != '\0'; p++)
    {
      if (par_flag && *p == '(')
 pars_num++;
      else if (par_flag && *p == ')')
 pars_num--;
      else if (pars_num == 0 && *p == sep)
 break;
      if (pars_num == 0 && ISSPACE ((int) *p))
 n_spaces++;
      else
 {
   for (; n_spaces != 0; n_spaces--)
     obstack_1grow (&irp, p [-n_spaces]);
   obstack_1grow (&irp, *p);
 }
    }
  obstack_1grow (&irp, '\0');
  out_str = obstack_base (&irp);
  (void) obstack_finish (&irp);

  *pstr = p;
  if (**pstr == sep)
    (*pstr)++;

  return out_str;
}
