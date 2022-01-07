
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ htab_find (int ,char const**) ;
 int joined_conditions ;
 int print_rtx_ptr_loc (char const*) ;
 int printf (char*,...) ;
 int putc (char,int ) ;
 int stdout ;

void
print_c_condition (const char *cond)
{
  const char **halves = (const char **) htab_find (joined_conditions, &cond);
  if (halves != 0)
    {
      printf ("(");
      print_c_condition (halves[1]);
      printf (" && ");
      print_c_condition (halves[2]);
      printf (")");
    }
  else
    {
      putc ('\n', stdout);
      print_rtx_ptr_loc (cond);
      printf ("(%s)", cond);
    }
}
