
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef long int32_t ;


 scalar_t__ errno ;
 long strtol (char const*,char**,int) ;

__attribute__((used)) static int
val_parse_int32(const char *val, int32_t *p, int32_t min, int32_t max, int base)
{
 long n;
 char *end;

 errno = 0;
 n = strtol(val, &end, base);
 if (errno != 0 || *end != '\0')
  return (0);
 if (n < min || n > max)
  return (0);
 *p = (int32_t)n;
 return (1);
}
