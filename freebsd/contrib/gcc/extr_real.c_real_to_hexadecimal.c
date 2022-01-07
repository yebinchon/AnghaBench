
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int cl; size_t sign; int* sig; scalar_t__ decimal; } ;
typedef TYPE_1__ REAL_VALUE_TYPE ;


 int HOST_BITS_PER_LONG ;
 int REAL_EXP (TYPE_1__ const*) ;
 int SIGNIFICAND_BITS ;
 int SIGSZ ;
 int gcc_assert (int) ;
 int gcc_unreachable () ;




 int sprintf (char*,char*,int) ;
 int strcpy (char*,char*) ;
 size_t strlen (char*) ;

void
real_to_hexadecimal (char *str, const REAL_VALUE_TYPE *r, size_t buf_size,
       size_t digits, int crop_trailing_zeros)
{
  int i, j, exp = REAL_EXP (r);
  char *p, *first;
  char exp_buf[16];
  size_t max_digits;

  switch (r->cl)
    {
    case 128:
      exp = 0;
      break;
    case 129:
      break;
    case 131:
      strcpy (str, (r->sign ? "-Inf" : "+Inf"));
      return;
    case 130:

      strcpy (str, (r->sign ? "-NaN" : "+NaN"));
      return;
    default:
      gcc_unreachable ();
    }

  if (r->decimal)
    {

      strcpy (str, "N/A");
      return;
    }

  if (digits == 0)
    digits = SIGNIFICAND_BITS / 4;



  sprintf (exp_buf, "p%+d", exp);
  max_digits = buf_size - strlen (exp_buf) - r->sign - 4 - 1;
  gcc_assert (max_digits <= buf_size);
  if (digits > max_digits)
    digits = max_digits;

  p = str;
  if (r->sign)
    *p++ = '-';
  *p++ = '0';
  *p++ = 'x';
  *p++ = '0';
  *p++ = '.';
  first = p;

  for (i = SIGSZ - 1; i >= 0; --i)
    for (j = HOST_BITS_PER_LONG - 4; j >= 0; j -= 4)
      {
 *p++ = "0123456789abcdef"[(r->sig[i] >> j) & 15];
 if (--digits == 0)
   goto out;
      }

 out:
  if (crop_trailing_zeros)
    while (p > first + 1 && p[-1] == '0')
      p--;

  sprintf (p, "p%+d", exp);
}
