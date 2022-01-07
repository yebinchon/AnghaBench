
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ERANGE ;
 scalar_t__ ISALPHA (int) ;
 scalar_t__ ISDIGIT (int) ;
 scalar_t__ ISSPACE (int) ;
 scalar_t__ ISUPPER (int) ;
 unsigned long ULONG_MAX ;
 int errno ;

unsigned long
strtoul(const char *nptr, char **endptr, register int base)
{
 register const char *s = nptr;
 register unsigned long acc;
 register int c;
 register unsigned long cutoff;
 register int neg = 0, any, cutlim;




 do {
  c = *s++;
 } while (ISSPACE(c));
 if (c == '-') {
  neg = 1;
  c = *s++;
 } else if (c == '+')
  c = *s++;
 if ((base == 0 || base == 16) &&
     c == '0' && (*s == 'x' || *s == 'X')) {
  c = s[1];
  s += 2;
  base = 16;
 }
 if (base == 0)
  base = c == '0' ? 8 : 10;
 cutoff = (unsigned long)ULONG_MAX / (unsigned long)base;
 cutlim = (unsigned long)ULONG_MAX % (unsigned long)base;
 for (acc = 0, any = 0;; c = *s++) {
  if (ISDIGIT(c))
   c -= '0';
  else if (ISALPHA(c))
   c -= ISUPPER(c) ? 'A' - 10 : 'a' - 10;
  else
   break;
  if (c >= base)
   break;
  if (any < 0 || acc > cutoff || (acc == cutoff && c > cutlim))
   any = -1;
  else {
   any = 1;
   acc *= base;
   acc += c;
  }
 }
 if (any < 0) {
  acc = ULONG_MAX;
  errno = ERANGE;
 } else if (neg)
  acc = -acc;
 if (endptr != 0)
  *endptr = (char *) (any ? s - 1 : nptr);
 return (acc);
}
