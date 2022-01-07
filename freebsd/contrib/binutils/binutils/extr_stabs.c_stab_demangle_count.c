
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ ISDIGIT (char const) ;

__attribute__((used)) static unsigned int
stab_demangle_count (const char **pp)
{
  unsigned int count;

  count = 0;
  while (ISDIGIT (**pp))
    {
      count *= 10;
      count += **pp - '0';
      ++*pp;
    }
  return count;
}
