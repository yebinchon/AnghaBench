#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct real_format {int b; int emax; int log2_b; int p; int pnan; } ;
typedef  enum machine_mode { ____Placeholder_machine_mode } machine_mode ;
struct TYPE_8__ {int sign; struct TYPE_8__* sig; int /*<<< orphan*/  cl; } ;
typedef  TYPE_1__ REAL_VALUE_TYPE ;

/* Variables and functions */
 struct real_format* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int) ; 
 int SIGNIFICAND_BITS ; 
 int SIGSZ ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct real_format const*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int,int) ; 
 int /*<<< orphan*/  rvc_normal ; 

void
FUNC7 (REAL_VALUE_TYPE *r, int sign, enum machine_mode mode)
{
  const struct real_format *fmt;
  int np2;

  fmt = FUNC0 (mode);
  FUNC5 (fmt);
  FUNC6 (r, 0, sizeof (*r));
  
  if (fmt->b == 10)
    FUNC4 (r, sign, mode);
  else
    {
      r->cl = rvc_normal;
      r->sign = sign;
      FUNC1 (r, fmt->emax * fmt->log2_b);

      np2 = SIGNIFICAND_BITS - fmt->p * fmt->log2_b;
      FUNC6 (r->sig, -1, SIGSZ * sizeof (unsigned long));
      FUNC2 (r, np2);

      if (fmt->pnan < fmt->p)
	/* This is an IBM extended double format made up of two IEEE
	   doubles.  The value of the long double is the sum of the
	   values of the two parts.  The most significant part is
	   required to be the value of the long double rounded to the
	   nearest double.  Rounding means we need a slightly smaller
	   value for LDBL_MAX.  */
        FUNC3 (r, SIGNIFICAND_BITS - fmt->pnan);
    }
}