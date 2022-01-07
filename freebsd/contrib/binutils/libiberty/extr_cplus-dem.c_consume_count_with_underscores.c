
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ISDIGIT (unsigned char) ;
 int consume_count (char const**) ;

__attribute__((used)) static int
consume_count_with_underscores (const char **mangled)
{
  int idx;

  if (**mangled == '_')
    {
      (*mangled)++;
      if (!ISDIGIT ((unsigned char)**mangled))
 return -1;

      idx = consume_count (mangled);
      if (**mangled != '_')

 return -1;

      (*mangled)++;
    }
  else
    {
      if (**mangled < '0' || **mangled > '9')
 return -1;

      idx = **mangled - '0';
      (*mangled)++;
    }

  return idx;
}
