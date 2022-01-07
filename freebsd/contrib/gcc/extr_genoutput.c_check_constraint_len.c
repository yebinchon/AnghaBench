
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int constraint_len (char const*,int) ;
 int gcc_assert (int) ;

__attribute__((used)) static void
check_constraint_len (void)
{
  const char *p;
  int d;

  for (p = ",#*+=&%!1234567890"; *p; p++)
    for (d = -9; d < 9; d++)
      gcc_assert (constraint_len (p, d) == d);
}
