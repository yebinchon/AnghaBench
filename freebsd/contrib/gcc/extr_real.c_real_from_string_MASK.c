#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {unsigned long* sig; scalar_t__ cl; int sign; } ;
typedef  TYPE_1__ REAL_VALUE_TYPE ;

/* Variables and functions */
 int HOST_BITS_PER_LONG ; 
 scalar_t__ FUNC0 (char const) ; 
 int MAX_EXP ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int) ; 
 int SIGNIFICAND_BITS ; 
 int _hex_bad ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,TYPE_1__*,TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int) ; 
 int FUNC7 (char const) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 scalar_t__ rvc_normal ; 
 scalar_t__ rvc_zero ; 
 TYPE_1__* FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,int) ; 

void
FUNC12 (REAL_VALUE_TYPE *r, const char *str)
{
  int exp = 0;
  bool sign = false;

  FUNC6 (r, 0);

  if (*str == '-')
    {
      sign = true;
      str++;
    }
  else if (*str == '+')
    str++;

  if (str[0] == '0' && (str[1] == 'x' || str[1] == 'X'))
    {
      /* Hexadecimal floating point.  */
      int pos = SIGNIFICAND_BITS - 4, d;

      str += 2;

      while (*str == '0')
	str++;
      while (1)
	{
	  d = FUNC7 (*str);
	  if (d == _hex_bad)
	    break;
	  if (pos >= 0)
	    {
	      r->sig[pos / HOST_BITS_PER_LONG]
		|= (unsigned long) d << (pos % HOST_BITS_PER_LONG);
	      pos -= 4;
	    }
	  else if (d)
	    /* Ensure correct rounding by setting last bit if there is
	       a subsequent nonzero digit.  */
	    r->sig[0] |= 1;
	  exp += 4;
	  str++;
	}
      if (*str == '.')
	{
	  str++;
	  if (pos == SIGNIFICAND_BITS - 4)
	    {
	      while (*str == '0')
		str++, exp -= 4;
	    }
	  while (1)
	    {
	      d = FUNC7 (*str);
	      if (d == _hex_bad)
		break;
	      if (pos >= 0)
		{
		  r->sig[pos / HOST_BITS_PER_LONG]
		    |= (unsigned long) d << (pos % HOST_BITS_PER_LONG);
		  pos -= 4;
		}
	      else if (d)
		/* Ensure correct rounding by setting last bit if there is
		   a subsequent nonzero digit.  */
		r->sig[0] |= 1;
	      str++;
	    }
	}

      /* If the mantissa is zero, ignore the exponent.  */
      if (!FUNC2 (r))
	goto underflow;

      if (*str == 'p' || *str == 'P')
	{
	  bool exp_neg = false;

	  str++;
	  if (*str == '-')
	    {
	      exp_neg = true;
	      str++;
	    }
	  else if (*str == '+')
	    str++;

	  d = 0;
	  while (FUNC0 (*str))
	    {
	      d *= 10;
	      d += *str - '0';
	      if (d > MAX_EXP)
		{
		  /* Overflowed the exponent.  */
		  if (exp_neg)
		    goto underflow;
		  else
		    goto overflow;
		}
	      str++;
	    }
	  if (exp_neg)
	    d = -d;

	  exp += d;
	}

      r->cl = rvc_normal;
      FUNC1 (r, exp);

      FUNC8 (r);
    }
  else
    {
      /* Decimal floating point.  */
      const REAL_VALUE_TYPE *ten = FUNC10 (0);
      int d;

      while (*str == '0')
	str++;
      while (FUNC0 (*str))
	{
	  d = *str++ - '0';
	  FUNC4 (r, r, ten);
	  if (d)
	    FUNC3 (r, r, FUNC9 (d), 0);
	}
      if (*str == '.')
	{
	  str++;
	  if (r->cl == rvc_zero)
	    {
	      while (*str == '0')
		str++, exp--;
	    }
	  while (FUNC0 (*str))
	    {
	      d = *str++ - '0';
	      FUNC4 (r, r, ten);
	      if (d)
	        FUNC3 (r, r, FUNC9 (d), 0);
	      exp--;
	    }
	}

      /* If the mantissa is zero, ignore the exponent.  */
      if (r->cl == rvc_zero)
	goto underflow;

      if (*str == 'e' || *str == 'E')
	{
	  bool exp_neg = false;

	  str++;
	  if (*str == '-')
	    {
	      exp_neg = true;
	      str++;
	    }
	  else if (*str == '+')
	    str++;

	  d = 0;
	  while (FUNC0 (*str))
	    {
	      d *= 10;
	      d += *str - '0';
	      if (d > MAX_EXP)
		{
		  /* Overflowed the exponent.  */
		  if (exp_neg)
		    goto underflow;
		  else
		    goto overflow;
		}
	      str++;
	    }
	  if (exp_neg)
	    d = -d;
	  exp += d;
	}

      if (exp)
	FUNC11 (r, exp);
    }

  r->sign = sign;
  return;

 underflow:
  FUNC6 (r, sign);
  return;

 overflow:
  FUNC5 (r, sign);
  return;
}