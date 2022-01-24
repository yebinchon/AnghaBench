#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ tree ;
typedef  enum tree_code { ____Placeholder_tree_code } tree_code ;
struct TYPE_2__ {int /*<<< orphan*/  name; } ;
typedef  scalar_t__ TREE_READONLY ;

/* Variables and functions */
 int ALIGNOF_EXPR ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ INTEGER_CST ; 
 scalar_t__ METHOD_TYPE ; 
 int SIZEOF_EXPR ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (int,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int FUNC6 (scalar_t__) ; 
 scalar_t__ error_mark_node ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 scalar_t__ FUNC8 (scalar_t__) ; 
 TYPE_1__* operator_name_info ; 
 scalar_t__ pedantic ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ processing_template_decl ; 
 scalar_t__ size_one_node ; 
 int /*<<< orphan*/  size_type_node ; 
 scalar_t__ warn_pointer_arith ; 

tree
FUNC10 (tree type, enum tree_code op, bool complain)
{
  tree value;
  bool dependent_p;

  FUNC7 (op == SIZEOF_EXPR || op == ALIGNOF_EXPR);
  if (type == error_mark_node)
    return error_mark_node;

  type = FUNC8 (type);
  if (FUNC1 (type) == METHOD_TYPE)
    {
      if (complain && (pedantic || warn_pointer_arith))
	FUNC9 ("invalid application of %qs to a member function", 
		 operator_name_info[(int) op].name);
      value = size_one_node;
    }

  dependent_p = FUNC6 (type);
  if (!dependent_p)
    FUNC5 (type);
  if (dependent_p
      /* VLA types will have a non-constant size.  In the body of an
	 uninstantiated template, we don't need to try to compute the
	 value, because the sizeof expression is not an integral
	 constant expression in that case.  And, if we do try to
	 compute the value, we'll likely end up with SAVE_EXPRs, which
	 the template substitution machinery does not expect to see.  */
      || (processing_template_decl 
	  && FUNC0 (type)
	  && FUNC1 (FUNC2 (type)) != INTEGER_CST))
    {
      value = FUNC3 (op, size_type_node, type);
      TREE_READONLY (value) = 1;
      return value;
    }

  return FUNC4 (FUNC5 (type),
				   op == SIZEOF_EXPR,
				   complain);
}