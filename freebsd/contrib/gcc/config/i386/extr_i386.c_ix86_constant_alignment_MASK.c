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

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 int BITS_PER_WORD ; 
 scalar_t__ DFmode ; 
 scalar_t__ REAL_CST ; 
 scalar_t__ STRING_CST ; 
 int /*<<< orphan*/  TARGET_NO_ALIGN_LONG_STRINGS ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  optimize_size ; 

int
FUNC5 (tree exp, int align)
{
  if (FUNC1 (exp) == REAL_CST)
    {
      if (FUNC4 (FUNC3 (exp)) == DFmode && align < 64)
	return 64;
      else if (FUNC0 (FUNC4 (FUNC3 (exp))) && align < 128)
	return 128;
    }
  else if (!optimize_size && FUNC1 (exp) == STRING_CST
      	   && !TARGET_NO_ALIGN_LONG_STRINGS
	   && FUNC2 (exp) >= 31 && align < BITS_PER_WORD)
    return BITS_PER_WORD;

  return align;
}