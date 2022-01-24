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
typedef  int /*<<< orphan*/  rtx ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FIRST_PSEUDO_REGISTER ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  current_function_decl ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/  (*) (int /*<<< orphan*/ ,int /*<<< orphan*/ *),int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void
FUNC7 (void)
{
  FUNC5 (do_clobber_return_reg, NULL);

  /* In case we do use pseudo to return value, clobber it too.  */
  if (FUNC2 (FUNC0 (current_function_decl)))
    {
      tree decl_result = FUNC0 (current_function_decl);
      rtx decl_rtl = FUNC1 (decl_result);
      if (FUNC4 (decl_rtl) && FUNC3 (decl_rtl) >= FIRST_PSEUDO_REGISTER)
	{
	  FUNC6 (decl_rtl, NULL);
	}
    }
}