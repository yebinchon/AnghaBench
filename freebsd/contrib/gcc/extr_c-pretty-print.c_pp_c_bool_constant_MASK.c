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
typedef  int /*<<< orphan*/  c_pretty_printer ;

/* Variables and functions */
 scalar_t__ INTEGER_CST ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ boolean_false_node ; 
 scalar_t__ boolean_true_node ; 
 scalar_t__ FUNC1 () ; 
 scalar_t__ flag_isoc99 ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,scalar_t__) ; 

__attribute__((used)) static void
FUNC5 (c_pretty_printer *pp, tree b)
{
  if (b == boolean_false_node)
    {
      if (FUNC1 ())
	FUNC2 (pp, "false");
      else if (flag_isoc99)
	FUNC2 (pp, "_False");
      else
	FUNC4 (pp, b);
    }
  else if (b == boolean_true_node)
    {
      if (FUNC1 ())
	FUNC2 (pp, "true");
      else if (flag_isoc99)
	FUNC2 (pp, "_True");
      else
	FUNC4 (pp, b);
    }
  else if (FUNC0 (b) == INTEGER_CST)
    FUNC3 (pp, b);
  else
    FUNC4 (pp, b);
}