#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {unsigned long* sig; } ;
typedef  TYPE_1__ REAL_VALUE_TYPE ;

/* Variables and functions */
 int SIGNIFICAND_BITS ; 
 int SIGSZ ; 
 unsigned long SIG_MSB ; 
 scalar_t__ FUNC0 (TYPE_1__*,TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,TYPE_1__*,TYPE_1__ const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline bool
FUNC5 (REAL_VALUE_TYPE *r, const REAL_VALUE_TYPE *a,
		  const REAL_VALUE_TYPE *b)
{
  REAL_VALUE_TYPE u;
  int i, bit = SIGNIFICAND_BITS - 1;
  unsigned long msb, inexact;

  u = *a;
  FUNC2 (r->sig, 0, sizeof (r->sig));

  msb = 0;
  goto start;
  do
    {
      msb = u.sig[SIGSZ-1] & SIG_MSB;
      FUNC1 (&u, &u);
    start:
      if (msb || FUNC0 (&u, b) >= 0)
	{
	  FUNC4 (&u, &u, b, 0);
	  FUNC3 (r, bit);
	}
    }
  while (--bit >= 0);

  for (i = 0, inexact = 0; i < SIGSZ; i++)
    inexact |= u.sig[i];

  return inexact != 0;
}