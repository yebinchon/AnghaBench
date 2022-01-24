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
 scalar_t__ INTEGER_CST ; 
 scalar_t__ INTEGER_TYPE ; 
 int /*<<< orphan*/  OPT_Wconversion ; 
 int /*<<< orphan*/  OPT_Woverflow ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ skip_evaluation ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void
FUNC6 (tree result, tree operand)
{
  tree type = FUNC1 (result);

  if (FUNC0 (operand) == INTEGER_CST
      && FUNC0 (type) == INTEGER_TYPE
      && FUNC2 (type)
      && skip_evaluation == 0
      && !FUNC4 (operand, type))
    {
      if (!FUNC4 (operand, FUNC3 (type)))
	/* This detects cases like converting -129 or 256 to unsigned char.  */
	FUNC5 (OPT_Woverflow,
		 "large integer implicitly truncated to unsigned type");
      else
	FUNC5 (OPT_Wconversion,
		 "negative integer implicitly converted to unsigned type");
    }
}