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
 int /*<<< orphan*/  NULL_TREE ; 
 int /*<<< orphan*/  POLYNOMIAL_CHREC ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned int) ; 
 scalar_t__ chrec_dont_know ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static inline tree 
FUNC4 (unsigned loop_num, 
			tree left, 
			tree right)
{
  if (left == chrec_dont_know
      || right == chrec_dont_know)
    return chrec_dont_know;

  FUNC3 (FUNC0 (left) == FUNC0 (right));

  return FUNC1 (POLYNOMIAL_CHREC, FUNC0 (left), 
		 FUNC2 (NULL_TREE, loop_num), left, right);
}