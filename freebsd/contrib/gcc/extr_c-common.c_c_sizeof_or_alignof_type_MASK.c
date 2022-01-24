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
typedef  char* tree ;
typedef  enum tree_code { ____Placeholder_tree_code } tree_code ;

/* Variables and functions */
 int BITS_PER_UNIT ; 
 int /*<<< orphan*/  CEIL_DIV_EXPR ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int ERROR_MARK ; 
 int FUNCTION_BOUNDARY ; 
 int FUNCTION_TYPE ; 
 int FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int VOID_TYPE ; 
 int /*<<< orphan*/  char_type_node ; 
 int /*<<< orphan*/  FUNC7 (char*,char const*,char*) ; 
 char* FUNC8 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 scalar_t__ pedantic ; 
 int /*<<< orphan*/  FUNC10 (char*,...) ; 
 char* FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 char* FUNC12 (int) ; 
 char* size_one_node ; 
 int /*<<< orphan*/  size_type_node ; 
 char* size_zero_node ; 
 scalar_t__ warn_pointer_arith ; 

tree
FUNC13 (tree type, bool is_sizeof, int complain)
{
  const char *op_name;
  tree value = NULL;
  enum tree_code type_code = FUNC1 (type);

  op_name = is_sizeof ? "sizeof" : "__alignof__";

  if (type_code == FUNCTION_TYPE)
    {
      if (is_sizeof)
	{
	  if (complain && (pedantic || warn_pointer_arith))
	    FUNC10 ("invalid application of %<sizeof%> to a function type");
	  value = size_one_node;
	}
      else
	value = FUNC12 (FUNCTION_BOUNDARY / BITS_PER_UNIT);
    }
  else if (type_code == VOID_TYPE || type_code == ERROR_MARK)
    {
      if (type_code == VOID_TYPE
	  && complain && (pedantic || warn_pointer_arith))
	FUNC10 ("invalid application of %qs to a void type", op_name);
      value = size_one_node;
    }
  else if (!FUNC0 (type))
    {
      if (complain)
	FUNC7 ("invalid application of %qs to incomplete type %qT ",
	       op_name, type);
      value = size_zero_node;
    }
  else
    {
      if (is_sizeof)
	/* Convert in case a char is more than one unit.  */
	value = FUNC11 (CEIL_DIV_EXPR, FUNC6 (type),
			    FUNC12 (FUNC5 (char_type_node)
				      / BITS_PER_UNIT));
      else
	value = FUNC12 (FUNC3 (type));
    }

  /* VALUE will have an integer type with TYPE_IS_SIZETYPE set.
     TYPE_IS_SIZETYPE means that certain things (like overflow) will
     never happen.  However, this node should really have type
     `size_t', which is just a typedef for an ordinary integer type.  */
  value = FUNC8 (size_type_node, value);
  FUNC9 (!FUNC4 (FUNC2 (value)));

  return value;
}