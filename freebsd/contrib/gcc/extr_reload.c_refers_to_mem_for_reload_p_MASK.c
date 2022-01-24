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
typedef  int /*<<< orphan*/  rtx ;

/* Variables and functions */
 size_t FIRST_PSEUDO_REGISTER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 size_t FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 
 scalar_t__* reg_equiv_memory_loc ; 

__attribute__((used)) static int
FUNC7 (rtx x)
{
  const char *fmt;
  int i;

  if (FUNC3 (x))
    return 1;

  if (FUNC5 (x))
    return (FUNC4 (x) >= FIRST_PSEUDO_REGISTER
	    && reg_equiv_memory_loc[FUNC4 (x)]);

  fmt = FUNC1 (FUNC0 (x));
  for (i = FUNC2 (FUNC0 (x)) - 1; i >= 0; i--)
    if (fmt[i] == 'e'
	&& (FUNC3 (FUNC6 (x, i))
	    || FUNC7 (FUNC6 (x, i))))
      return 1;

  return 0;
}