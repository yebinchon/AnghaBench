
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ errno ;
 double strtod (char const*,char**) ;

__attribute__((used)) static int
val_parse_double(const char *val, double *p)
{
 char *end;

 errno = 0;
 *p = strtod(val, &end);
 if (errno != 0 || *end != '\0')
  return (0);
 return (1);
}
