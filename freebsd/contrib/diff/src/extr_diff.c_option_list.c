
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ quote_system_arg (char*,char*) ;
 char* xmalloc (size_t) ;

__attribute__((used)) static char *
option_list (char **optionvec, int count)
{
  int i;
  size_t size = 1;
  char *result;
  char *p;

  for (i = 0; i < count; i++)
    size += 1 + quote_system_arg ((char *) 0, optionvec[i]);

  p = result = xmalloc (size);

  for (i = 0; i < count; i++)
    {
      *p++ = ' ';
      p += quote_system_arg (p, optionvec[i]);
    }

  *p = 0;
  return result;
}
