
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct work_stuff {int dummy; } ;
typedef int string ;


 scalar_t__ ISDIGIT (unsigned char) ;
 int demangle_expression (struct work_stuff*,char const**,int *,int ) ;
 int string_appendn (int *,char const*,int) ;
 int tk_real ;

__attribute__((used)) static int
demangle_real_value (struct work_stuff *work,
                     const char **mangled, string *s)
{
  if (**mangled == 'E')
    return demangle_expression (work, mangled, s, tk_real);

  if (**mangled == 'm')
    {
      string_appendn (s, "-", 1);
      (*mangled)++;
    }
  while (ISDIGIT ((unsigned char)**mangled))
    {
      string_appendn (s, *mangled, 1);
      (*mangled)++;
    }
  if (**mangled == '.')
    {
      string_appendn (s, ".", 1);
      (*mangled)++;
      while (ISDIGIT ((unsigned char)**mangled))
 {
   string_appendn (s, *mangled, 1);
   (*mangled)++;
 }
    }
  if (**mangled == 'e')
    {
      string_appendn (s, "e", 1);
      (*mangled)++;
      while (ISDIGIT ((unsigned char)**mangled))
 {
   string_appendn (s, *mangled, 1);
   (*mangled)++;
 }
    }

  return 1;
}
