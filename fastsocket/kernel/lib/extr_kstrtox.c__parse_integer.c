
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int KSTRTOX_OVERFLOW ;
 scalar_t__ ULLONG_MAX ;
 char _tolower (char const) ;
 unsigned long long div_u64 (scalar_t__,unsigned int) ;
 scalar_t__ unlikely (unsigned long long) ;

unsigned int _parse_integer(const char *s, unsigned int base, unsigned long long *p)
{
 unsigned long long res;
 unsigned int rv;
 int overflow;

 res = 0;
 rv = 0;
 overflow = 0;
 while (*s) {
  unsigned int val;

  if ('0' <= *s && *s <= '9')
   val = *s - '0';
  else if ('a' <= _tolower(*s) && _tolower(*s) <= 'f')
   val = _tolower(*s) - 'a' + 10;
  else
   break;

  if (val >= base)
   break;




  if (unlikely(res & (~0ull << 60))) {
   if (res > div_u64(ULLONG_MAX - val, base))
    overflow = 1;
  }
  res = res * base + val;
  rv++;
  s++;
 }
 *p = res;
 if (overflow)
  rv |= KSTRTOX_OVERFLOW;
 return rv;
}
