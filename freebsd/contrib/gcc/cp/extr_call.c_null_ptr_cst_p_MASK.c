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
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 scalar_t__ null_node ; 

bool
FUNC6 (tree t)
{
  /* [conv.ptr]

     A null pointer constant is an integral constant expression
     (_expr.const_) rvalue of integer type that evaluates to zero.  */
  t = FUNC5 (t);
  if (t == null_node)
    return true;
  if (FUNC0 (FUNC3 (t)) && FUNC4 (t))
    {
      FUNC1 (t);
      if (!FUNC2 (t))
	return true;
    }
  return false;
}