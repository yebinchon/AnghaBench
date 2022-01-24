#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  REAL_VALUE_TYPE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static void
FUNC4 (REAL_VALUE_TYPE *r, int exp)
{
  REAL_VALUE_TYPE pten, *rr;
  bool negative = (exp < 0);
  int i;

  if (negative)
    {
      exp = -exp;
      pten = *FUNC2 (1);
      rr = &pten;
    }
  else
    rr = r;

  for (i = 0; exp > 0; ++i, exp >>= 1)
    if (exp & 1)
      FUNC1 (rr, rr, FUNC3 (i));

  if (negative)
    FUNC0 (r, r, &pten);
}