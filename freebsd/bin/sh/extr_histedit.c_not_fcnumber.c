
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int is_number (char const*) ;

__attribute__((used)) static int
not_fcnumber(const char *s)
{
 if (s == ((void*)0))
  return (0);
 if (*s == '-')
  s++;
 return (!is_number(s));
}
