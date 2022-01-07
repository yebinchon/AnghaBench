
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int is_digit (char const) ;
 scalar_t__ memcmp (char const*,char*,int) ;

int
is_number(const char *p)
{
 const char *q;

 if (*p == '\0')
  return 0;
 while (*p == '0')
  p++;
 for (q = p; *q != '\0'; q++)
  if (! is_digit(*q))
   return 0;
 if (q - p > 10 ||
     (q - p == 10 && memcmp(p, "2147483647", 10) > 0))
  return 0;
 return 1;
}
