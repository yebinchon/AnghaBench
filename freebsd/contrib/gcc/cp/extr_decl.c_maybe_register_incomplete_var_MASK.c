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
 scalar_t__ ARRAY_TYPE ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 scalar_t__ VAR_DECL ; 
 scalar_t__ error_mark_node ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  incomplete_vars ; 
 int /*<<< orphan*/  processing_template_decl ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 

void
FUNC10 (tree var)
{
  FUNC8 (FUNC3 (var) == VAR_DECL);

  /* Keep track of variables with incomplete types.  */
  if (!processing_template_decl && FUNC4 (var) != error_mark_node
      && FUNC2 (var))
    {
      tree inner_type = FUNC4 (var);

      while (FUNC3 (inner_type) == ARRAY_TYPE)
	inner_type = FUNC4 (inner_type);
      inner_type = FUNC7 (inner_type);

      if ((!FUNC1 (inner_type) && FUNC0 (inner_type))
	  /* RTTI TD entries are created while defining the type_info.  */
	  || (FUNC6 (inner_type)
	      && FUNC5 (inner_type)))
	incomplete_vars = FUNC9 (inner_type, var, incomplete_vars);
    }
}