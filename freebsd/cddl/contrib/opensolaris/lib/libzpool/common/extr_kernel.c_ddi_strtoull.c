
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_longlong_t ;


 int errno ;
 int strtoull (char const*,char**,int) ;

int
ddi_strtoull(const char *str, char **nptr, int base, u_longlong_t *result)
{
 char *end;

 *result = strtoull(str, &end, base);
 if (*result == 0)
  return (errno);
 return (0);
}
