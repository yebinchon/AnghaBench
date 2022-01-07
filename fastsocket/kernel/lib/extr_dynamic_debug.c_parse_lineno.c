
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BUG_ON (int ) ;
 int EINVAL ;
 unsigned int simple_strtoul (char const*,char**,int) ;

__attribute__((used)) static inline int parse_lineno(const char *str, unsigned int *val)
{
 char *end = ((void*)0);
 BUG_ON(str == ((void*)0));
 if (*str == '\0') {
  *val = 0;
  return 0;
 }
 *val = simple_strtoul(str, &end, 10);
 return end == ((void*)0) || end == str || *end != '\0' ? -EINVAL : 0;
}
