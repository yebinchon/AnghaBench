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
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__,int) ; 
 int /*<<< orphan*/  check_nonnull_arg ; 
 scalar_t__ FUNC4 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (scalar_t__,int) ; 

__attribute__((used)) static void
FUNC6 (tree attrs, tree params)
{
  tree a, args, param;
  int param_num;

  for (a = attrs; a; a = FUNC0 (a))
    {
      if (FUNC4 ("nonnull", FUNC1 (a)))
	{
	  args = FUNC2 (a);

	  /* Walk the argument list.  If we encounter an argument number we
	     should check for non-null, do it.  If the attribute has no args,
	     then every pointer argument is checked (in which case the check
	     for pointer type is done in check_nonnull_arg).  */
	  for (param = params, param_num = 1; ;
	       param_num++, param = FUNC0 (param))
	    {
	      if (!param)
	break;
	      if (!args || FUNC5 (args, param_num))
	FUNC3 (check_nonnull_arg, NULL,
					  FUNC2 (param),
					  param_num);
	    }
	}
    }
}