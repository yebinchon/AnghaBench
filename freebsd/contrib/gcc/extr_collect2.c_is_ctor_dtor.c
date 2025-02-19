
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ strncmp (char const*,int*,int const) ;

__attribute__((used)) static int
is_ctor_dtor (const char *s)
{
  struct names { const char *const name; const int len; const int ret;
    const int two_underscores; };

  const struct names *p;
  int ch;
  const char *orig_s = s;

  static const struct names special[] = {

    { "GLOBAL__I$", sizeof ("GLOBAL__I$")-1, 1, 0 },
    { "GLOBAL__D$", sizeof ("GLOBAL__D$")-1, 2, 0 },






    { "GLOBAL__I_", sizeof ("GLOBAL__I_")-1, 1, 0 },
    { "GLOBAL__D_", sizeof ("GLOBAL__D_")-1, 2, 0 },
    { "GLOBAL__F_", sizeof ("GLOBAL__F_")-1, 5, 0 },
    { "GLOBAL__FI_", sizeof ("GLOBAL__FI_")-1, 3, 0 },
    { "GLOBAL__FD_", sizeof ("GLOBAL__FD_")-1, 4, 0 },
    { ((void*)0), 0, 0, 0 }
  };

  while ((ch = *s) == '_')
    ++s;

  if (s == orig_s)
    return 0;

  for (p = &special[0]; p->len > 0; p++)
    {
      if (ch == p->name[0]
   && (!p->two_underscores || ((s - orig_s) >= 2))
   && strncmp(s, p->name, p->len) == 0)
 {
   return p->ret;
 }
    }
  return 0;
}
