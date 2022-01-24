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
typedef  scalar_t__ tree ;

/* Variables and functions */
 int FUNC0 (scalar_t__,scalar_t__) ; 
 int FUNC1 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (scalar_t__) ; 

int
FUNC5 (tree t1, tree t2)
{
  if (t1 == t2)
    return 0;

  if (FUNC3 (FUNC2 (t1)) != FUNC3 (FUNC2 (t2)))
    {
      int t1_sgn = FUNC4 (t1);
      int t2_sgn = FUNC4 (t2);

      if (t1_sgn < t2_sgn)
	return 1;
      else if (t1_sgn > t2_sgn)
	return 0;
      /* Otherwise, both are non-negative, so we compare them as
	 unsigned just in case one of them would overflow a signed
	 type.  */
    }
  else if (!FUNC3 (FUNC2 (t1)))
    return FUNC0 (t1, t2);

  return FUNC1 (t1, t2);
}