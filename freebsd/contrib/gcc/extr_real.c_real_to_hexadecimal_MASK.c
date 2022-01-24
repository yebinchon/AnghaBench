#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int cl; size_t sign; int* sig; scalar_t__ decimal; } ;
typedef  TYPE_1__ REAL_VALUE_TYPE ;

/* Variables and functions */
 int HOST_BITS_PER_LONG ; 
 int FUNC0 (TYPE_1__ const*) ; 
 int SIGNIFICAND_BITS ; 
 int SIGSZ ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
#define  rvc_inf 131 
#define  rvc_nan 130 
#define  rvc_normal 129 
#define  rvc_zero 128 
 int /*<<< orphan*/  FUNC3 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 size_t FUNC5 (char*) ; 

void
FUNC6 (char *str, const REAL_VALUE_TYPE *r, size_t buf_size,
		     size_t digits, int crop_trailing_zeros)
{
  int i, j, exp = FUNC0 (r);
  char *p, *first;
  char exp_buf[16];
  size_t max_digits;

  switch (r->cl)
    {
    case rvc_zero:
      exp = 0;
      break;
    case rvc_normal:
      break;
    case rvc_inf:
      FUNC4 (str, (r->sign ? "-Inf" : "+Inf"));
      return;
    case rvc_nan:
      /* ??? Print the significand as well, if not canonical?  */
      FUNC4 (str, (r->sign ? "-NaN" : "+NaN"));
      return;
    default:
      FUNC2 ();
    }

  if (r->decimal)
    {
      /* Hexadecimal format for decimal floats is not interesting. */
      FUNC4 (str, "N/A");
      return;
    }

  if (digits == 0)
    digits = SIGNIFICAND_BITS / 4;

  /* Bound the number of digits printed by the size of the output buffer.  */

  FUNC3 (exp_buf, "p%+d", exp);
  max_digits = buf_size - FUNC5 (exp_buf) - r->sign - 4 - 1;
  FUNC1 (max_digits <= buf_size);
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

  FUNC3 (p, "p%+d", exp);
}