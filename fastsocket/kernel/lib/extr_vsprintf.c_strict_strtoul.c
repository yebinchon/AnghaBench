
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 unsigned long simple_strtoul (char const*,char**,unsigned int) ;
 size_t strlen (char const*) ;

int strict_strtoul(const char *cp, unsigned int base, unsigned long *res)
{
 char *tail;
 unsigned long val;
 size_t len;

 *res = 0;
 len = strlen(cp);
 if (len == 0)
  return -EINVAL;

 val = simple_strtoul(cp, &tail, base);
 if (tail == cp)
  return -EINVAL;
 if ((*tail == '\0') ||
  ((len == (size_t)(tail - cp) + 1) && (*tail == '\n'))) {
  *res = val;
  return 0;
 }

 return -EINVAL;
}
