
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ERANGE ;
 int _kstrtoull (char const*,unsigned int,unsigned long long*) ;
 int kstrtoull (char const*,unsigned int,unsigned long long*) ;

int kstrtoll(const char *s, unsigned int base, long long *res)
{
 unsigned long long tmp;
 int rv;

 if (s[0] == '-') {
  rv = _kstrtoull(s + 1, base, &tmp);
  if (rv < 0)
   return rv;
  if ((long long)(-tmp) >= 0)
   return -ERANGE;
  *res = -tmp;
 } else {
  rv = kstrtoull(s, base, &tmp);
  if (rv < 0)
   return rv;
  if ((long long)tmp < 0)
   return -ERANGE;
  *res = tmp;
 }
 return 0;
}
