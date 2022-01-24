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
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

tree
FUNC5 (tree type, const char *prefix)
{
  tree tmp_var;

  /* We don't allow types that are addressable (meaning we can't make copies),
     or incomplete.  We also used to reject every variable size objects here,
     but now support those for which a constant upper bound can be obtained.
     The processing for variable sizes is performed in gimple_add_tmp_var,
     point at which it really matters and possibly reached via paths not going
     through this function, e.g. after direct calls to create_tmp_var_raw.  */
  FUNC3 (!FUNC1 (type) && FUNC0 (type));

  tmp_var = FUNC2 (type, prefix);
  FUNC4 (tmp_var);
  return tmp_var;
}