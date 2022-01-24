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
 scalar_t__ ENUMERAL_TYPE ; 
 int FUNC0 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 scalar_t__ boolean_type_node ; 
 scalar_t__ FUNC6 (int,int) ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 scalar_t__ double_type_node ; 
 scalar_t__ error_mark_node ; 
 scalar_t__ float_type_node ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ integer_type_node ; 
 scalar_t__ unsigned_type_node ; 
 scalar_t__ wchar_type_node ; 

tree
FUNC9 (tree type)
{
  if (type == error_mark_node)
    return error_mark_node;

  type = FUNC2 (type);

  /* bool always promotes to int (not unsigned), even if it's the same
     size.  */
  if (type == boolean_type_node)
    type = integer_type_node;

  /* Normally convert enums to int, but convert wide enums to something
     wider.  */
  else if (FUNC1 (type) == ENUMERAL_TYPE
	   || type == wchar_type_node)
    {
      int precision = FUNC0 (FUNC4 (type),
			   FUNC4 (integer_type_node));
      tree totype = FUNC6 (precision, 0);
      if (FUNC5 (type)
	  && ! FUNC8 (FUNC3 (type), totype))
	type = FUNC6 (precision, 1);
      else
	type = totype;
    }
  else if (FUNC7 (type))
    {
      /* Retain unsignedness if really not getting bigger.  */
      if (FUNC5 (type)
	  && FUNC4 (type) == FUNC4 (integer_type_node))
	type = unsigned_type_node;
      else
	type = integer_type_node;
    }
  else if (type == float_type_node)
    type = double_type_node;

  return type;
}