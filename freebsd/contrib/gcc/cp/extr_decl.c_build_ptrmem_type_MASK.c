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
 scalar_t__ FUNCTION_TYPE ; 
 scalar_t__ METHOD_TYPE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 

tree
FUNC12 (tree class_type, tree member_type)
{
  if (FUNC1 (member_type) == METHOD_TYPE)
    {
      tree arg_types;

      arg_types = FUNC4 (member_type);
      class_type = (FUNC9
		    (class_type,
		     FUNC10 (FUNC2 (FUNC3 (arg_types)))));
      member_type
	= FUNC5 (class_type,
				      FUNC2 (member_type),
				      FUNC0 (arg_types));
      return FUNC8 (FUNC7 (member_type));
    }
  else
    {
      FUNC11 (FUNC1 (member_type) != FUNCTION_TYPE);
      return FUNC6 (class_type, member_type);
    }
}