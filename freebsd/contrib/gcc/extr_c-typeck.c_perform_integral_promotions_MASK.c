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
 int COMPONENT_REF ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int ENUMERAL_TYPE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,scalar_t__) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  integer_type_node ; 
 int /*<<< orphan*/  unsigned_type_node ; 

tree
FUNC14 (tree exp)
{
  tree type = FUNC6 (exp);
  enum tree_code code = FUNC4 (type);

  FUNC13 (FUNC2 (type));

  /* Normally convert enums to int,
     but convert wide enums to something wider.  */
  if (code == ENUMERAL_TYPE)
    {
      type = FUNC9 (FUNC3 (FUNC7 (type),
					  FUNC7 (integer_type_node)),
				     ((FUNC7 (type)
				       >= FUNC7 (integer_type_node))
				      && FUNC8 (type)));

      return FUNC12 (type, exp);
    }

  /* ??? This should no longer be needed now bit-fields have their
     proper types.  */
  if (FUNC4 (exp) == COMPONENT_REF
      && FUNC0 (FUNC5 (exp, 1))
      /* If it's thinner than an int, promote it like a
	 c_promoting_integer_type_p, otherwise leave it alone.  */
      && 0 > FUNC11 (FUNC1 (FUNC5 (exp, 1)),
			       FUNC7 (integer_type_node)))
    return FUNC12 (integer_type_node, exp);

  if (FUNC10 (type))
    {
      /* Preserve unsignedness if not really getting any wider.  */
      if (FUNC8 (type)
	  && FUNC7 (type) == FUNC7 (integer_type_node))
	return FUNC12 (unsigned_type_node, exp);

      return FUNC12 (integer_type_node, exp);
    }

  return exp;
}