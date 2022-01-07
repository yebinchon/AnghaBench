
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int gcc_assert (int) ;
 int irp ;
 int n_sep_els (char const*,int,int) ;
 char* next_sep_el (char const**,int,int) ;
 scalar_t__ obstack_base (int *) ;
 int obstack_blank (int *,int) ;
 int obstack_finish (int *) ;

__attribute__((used)) static char **
get_str_vect (const char *str, int *els_num, int sep, int paren_p)
{
  int i;
  char **vect;
  const char **pstr;
  char *trail;

  *els_num = n_sep_els (str, sep, paren_p);
  if (*els_num <= 0)
    return ((void*)0);
  obstack_blank (&irp, sizeof (char *) * (*els_num + 1));
  vect = (char **) obstack_base (&irp);
  (void) obstack_finish (&irp);
  pstr = &str;
  for (i = 0; i < *els_num; i++)
    vect [i] = next_sep_el (pstr, sep, paren_p);
  trail = next_sep_el (pstr, sep, paren_p);
  gcc_assert (!trail);
  vect [i] = ((void*)0);
  return vect;
}
