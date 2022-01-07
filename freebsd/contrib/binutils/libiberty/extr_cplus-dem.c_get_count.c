
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ ISDIGIT (unsigned char) ;

__attribute__((used)) static int
get_count (const char **type, int *count)
{
  const char *p;
  int n;

  if (!ISDIGIT ((unsigned char)**type))
    return (0);
  else
    {
      *count = **type - '0';
      (*type)++;
      if (ISDIGIT ((unsigned char)**type))
 {
   p = *type;
   n = *count;
   do
     {
       n *= 10;
       n += *p - '0';
       p++;
     }
   while (ISDIGIT ((unsigned char)*p));
   if (*p == '_')
     {
       *type = p + 1;
       *count = n;
     }
 }
    }
  return (1);
}
