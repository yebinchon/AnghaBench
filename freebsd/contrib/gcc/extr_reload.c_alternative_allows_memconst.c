
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CONSTRAINT_LEN (int,char const*) ;
 scalar_t__ EXTRA_MEMORY_CONSTRAINT (int,char const*) ;

__attribute__((used)) static int
alternative_allows_memconst (const char *constraint, int altnum)
{
  int c;

  while (altnum > 0)
    {
      while (*constraint++ != ',');
      altnum--;
    }


  for (; (c = *constraint) && c != ',' && c != '#';
       constraint += CONSTRAINT_LEN (c, constraint))
    if (c == 'm' || c == 'o' || EXTRA_MEMORY_CONSTRAINT (c, constraint))
      return 1;
  return 0;
}
