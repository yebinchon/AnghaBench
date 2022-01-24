#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_1__ ;

/* Type definitions */
struct real_format {int b; int p; int log2_b; int emin; int emax; int /*<<< orphan*/  has_denorm; int /*<<< orphan*/  has_signed_zero; } ;
struct TYPE_20__ {int cl; unsigned long* sig; int /*<<< orphan*/  sign; scalar_t__ decimal; } ;
typedef  TYPE_1__ REAL_VALUE_TYPE ;

/* Variables and functions */
 int /*<<< orphan*/  DFmode ; 
 int HOST_BITS_PER_LONG ; 
 int FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int) ; 
 int SIGNIFICAND_BITS ; 
 int SIGSZ ; 
 unsigned long SIG_MSB ; 
 scalar_t__ FUNC2 (TYPE_1__*,TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (struct real_format const*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,TYPE_1__*,int) ; 
#define  rvc_inf 131 
#define  rvc_nan 130 
#define  rvc_normal 129 
#define  rvc_zero 128 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,int) ; 
 unsigned long FUNC12 (TYPE_1__*,TYPE_1__*,int) ; 
 int FUNC13 (TYPE_1__*,int) ; 

__attribute__((used)) static void
FUNC14 (const struct real_format *fmt, REAL_VALUE_TYPE *r)
{
  int p2, np2, i, w;
  unsigned long sticky;
  bool guard, lsb;
  int emin2m1, emax2;

  if (r->decimal)
    {
      if (fmt->b == 10)
	{
	  FUNC5 (fmt, r);
	  return;
	}
      /* FIXME. We can come here via fp_easy_constant
	 (e.g. -O0 on '_Decimal32 x = 1.0 + 2.0dd'), but have not
	 investigated whether this convert needs to be here, or
	 something else is missing. */
      FUNC4 (r, DFmode, r);
    }

  p2 = fmt->p * fmt->log2_b;
  emin2m1 = (fmt->emin - 1) * fmt->log2_b;
  emax2 = fmt->emax * fmt->log2_b;

  np2 = SIGNIFICAND_BITS - p2;
  switch (r->cl)
    {
    underflow:
      FUNC9 (r, r->sign);
    case rvc_zero:
      if (!fmt->has_signed_zero)
	r->sign = 0;
      return;

    overflow:
      FUNC8 (r, r->sign);
    case rvc_inf:
      return;

    case rvc_nan:
      FUNC3 (r, np2);
      return;

    case rvc_normal:
      break;

    default:
      FUNC7 ();
    }

  /* If we're not base2, normalize the exponent to a multiple of
     the true base.  */
  if (fmt->log2_b != 1)
    {
      int shift;

      FUNC6 (fmt->b != 10);
      shift = FUNC0 (r) & (fmt->log2_b - 1);
      if (shift)
	{
	  shift = fmt->log2_b - shift;
	  r->sig[0] |= FUNC12 (r, r, shift);
	  FUNC1 (r, FUNC0 (r) + shift);
	}
    }

  /* Check the range of the exponent.  If we're out of range,
     either underflow or overflow.  */
  if (FUNC0 (r) > emax2)
    goto overflow;
  else if (FUNC0 (r) <= emin2m1)
    {
      int diff;

      if (!fmt->has_denorm)
	{
	  /* Don't underflow completely until we've had a chance to round.  */
	  if (FUNC0 (r) < emin2m1)
	    goto underflow;
	}
      else
	{
	  diff = emin2m1 - FUNC0 (r) + 1;
	  if (diff > p2)
	    goto underflow;

	  /* De-normalize the significand.  */
	  r->sig[0] |= FUNC12 (r, r, diff);
	  FUNC1 (r, FUNC0 (r) + diff);
	}
    }

  /* There are P2 true significand bits, followed by one guard bit,
     followed by one sticky bit, followed by stuff.  Fold nonzero
     stuff into the sticky bit.  */

  sticky = 0;
  for (i = 0, w = (np2 - 1) / HOST_BITS_PER_LONG; i < w; ++i)
    sticky |= r->sig[i];
  sticky |=
    r->sig[w] & (((unsigned long)1 << ((np2 - 1) % HOST_BITS_PER_LONG)) - 1);

  guard = FUNC13 (r, np2 - 1);
  lsb = FUNC13 (r, np2);

  /* Round to even.  */
  if (guard && (sticky || lsb))
    {
      REAL_VALUE_TYPE u;
      FUNC9 (&u, 0);
      FUNC11 (&u, np2);

      if (FUNC2 (r, r, &u))
	{
	  /* Overflow.  Means the significand had been all ones, and
	     is now all zeros.  Need to increase the exponent, and
	     possibly re-normalize it.  */
	  FUNC1 (r, FUNC0 (r) + 1);
	  if (FUNC0 (r) > emax2)
	    goto overflow;
	  r->sig[SIGSZ-1] = SIG_MSB;

	  if (fmt->log2_b != 1)
	    {
	      int shift = FUNC0 (r) & (fmt->log2_b - 1);
	      if (shift)
		{
		  shift = fmt->log2_b - shift;
		  FUNC10 (r, r, shift);
		  FUNC1 (r, FUNC0 (r) + shift);
		  if (FUNC0 (r) > emax2)
		    goto overflow;
		}
	    }
	}
    }

  /* Catch underflow that we deferred until after rounding.  */
  if (FUNC0 (r) <= emin2m1)
    goto underflow;

  /* Clear out trailing garbage.  */
  FUNC3 (r, np2);
}