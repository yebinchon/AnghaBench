
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;


 void* CTOI (unsigned int) ;
 int INT64_MAX ;
 scalar_t__ INT64_MIN ;
 scalar_t__ IS_DIGIT (unsigned int) ;
 int MAX_BASE ;
 scalar_t__ UINT64_MAX ;
 int UU_ERROR_EMPTY ;
 int UU_ERROR_INVALID_ARGUMENT ;
 int UU_ERROR_INVALID_CHAR ;
 int UU_ERROR_INVALID_DIGIT ;
 int UU_ERROR_OVERFLOW ;
 int UU_ERROR_UNDERFLOW ;
 scalar_t__ isspace (unsigned int) ;
 int uu_set_error (int ) ;

__attribute__((used)) static int
strtoint(const char *s_arg, uint64_t *out, uint32_t base, int sign)
{
 const unsigned char *s = (const unsigned char *)s_arg;

 uint64_t val = 0;
 uint64_t multmax;

 unsigned c, i;

 int neg = 0;

 int bad_digit = 0;
 int bad_char = 0;
 int overflow = 0;

 if (s == ((void*)0) || base == 1 || base > MAX_BASE) {
  uu_set_error(UU_ERROR_INVALID_ARGUMENT);
  return (-1);
 }

 while ((c = *s) != 0 && isspace(c))
  s++;

 switch (c) {
 case '-':
  if (!sign)
   overflow = 1;
  neg = 1;

 case '+':
  c = *++s;
  break;
 default:
  break;
 }

 if (c == '\0') {
  uu_set_error(UU_ERROR_EMPTY);
  return (-1);
 }

 if (base == 0) {
  if (c != '0')
   base = 10;
  else if (s[1] == 'x' || s[1] == 'X')
   base = 16;
  else
   base = 8;
 }

 if (base == 16 && c == '0' && (s[1] == 'x' || s[1] == 'X'))
  c = *(s += 2);

 if ((val = CTOI(c)) >= base) {
  if (IS_DIGIT(c))
   bad_digit = 1;
  else
   bad_char = 1;
  val = 0;
 }

 multmax = (uint64_t)UINT64_MAX / (uint64_t)base;

 for (c = *++s; c != '\0'; c = *++s) {
  if ((i = CTOI(c)) >= base) {
   if (isspace(c))
    break;
   if (IS_DIGIT(c))
    bad_digit = 1;
   else
    bad_char = 1;
   i = 0;
  }

  if (val > multmax)
   overflow = 1;

  val *= base;
  if ((uint64_t)UINT64_MAX - val < (uint64_t)i)
   overflow = 1;

  val += i;
 }

 while ((c = *s) != 0) {
  if (!isspace(c))
   bad_char = 1;
  s++;
 }

 if (sign) {
  if (neg) {
   if (val > -(uint64_t)INT64_MIN)
    overflow = 1;
  } else {
   if (val > INT64_MAX)
    overflow = 1;
  }
 }

 if (neg)
  val = -val;

 if (bad_char | bad_digit | overflow) {
  if (bad_char)
   uu_set_error(UU_ERROR_INVALID_CHAR);
  else if (bad_digit)
   uu_set_error(UU_ERROR_INVALID_DIGIT);
  else if (overflow) {
   if (neg)
    uu_set_error(UU_ERROR_UNDERFLOW);
   else
    uu_set_error(UU_ERROR_OVERFLOW);
  }
  return (-1);
 }

 *out = val;
 return (0);
}
