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
typedef  int /*<<< orphan*/  tree ;
typedef  int HOST_WIDE_INT ;

/* Variables and functions */
 scalar_t__ CONSTRUCTOR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int*,int*,int*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5 (tree exp)
{
  if (FUNC0 (exp) == CONSTRUCTOR)

    {
      HOST_WIDE_INT nz_elts, count, elts;
      bool must_clear;

      FUNC2 (exp, &nz_elts, &count, &must_clear);
      if (must_clear)
	return 1;

      elts = FUNC3 (FUNC1 (exp), false);

      return nz_elts < elts / 4;
    }

  return FUNC4 (exp);
}