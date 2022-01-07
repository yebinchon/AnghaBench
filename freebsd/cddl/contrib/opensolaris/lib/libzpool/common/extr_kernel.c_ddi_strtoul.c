
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int errno ;
 unsigned long strtoul (char const*,char**,int) ;

int
ddi_strtoul(const char *hw_serial, char **nptr, int base, unsigned long *result)
{
 char *end;

 *result = strtoul(hw_serial, &end, base);
 if (*result == 0)
  return (errno);
 return (0);
}
