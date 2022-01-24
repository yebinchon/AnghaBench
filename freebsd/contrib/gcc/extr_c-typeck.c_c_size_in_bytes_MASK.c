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
typedef  enum tree_code { ____Placeholder_tree_code } tree_code ;

/* Variables and functions */
 int BITS_PER_UNIT ; 
 int /*<<< orphan*/  CEIL_DIV_EXPR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ERROR_MARK ; 
 int FUNCTION_TYPE ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int VOID_TYPE ; 
 int /*<<< orphan*/  char_type_node ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  size_one_node ; 

__attribute__((used)) static tree
FUNC7 (tree type)
{
  enum tree_code code = FUNC1 (type);

  if (code == FUNCTION_TYPE || code == VOID_TYPE || code == ERROR_MARK)
    return size_one_node;

  if (!FUNC0 (type))
    {
      FUNC4 ("arithmetic on pointer to an incomplete type");
      return size_one_node;
    }

  /* Convert in case a char is more than one unit.  */
  return FUNC5 (CEIL_DIV_EXPR, FUNC3 (type),
		     FUNC6 (FUNC2 (char_type_node)
			       / BITS_PER_UNIT));
}