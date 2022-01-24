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
struct arg_lookup {int dummy; } ;

/* Variables and functions */
#define  ARRAY_TYPE 147 
#define  BLOCK_POINTER_TYPE 146 
#define  BOOLEAN_TYPE 145 
#define  BOUND_TEMPLATE_TEMPLATE_PARM 144 
#define  COMPLEX_TYPE 143 
#define  ENUMERAL_TYPE 142 
#define  ERROR_MARK 141 
#define  FUNCTION_TYPE 140 
#define  INTEGER_TYPE 139 
#define  LANG_TYPE 138 
#define  METHOD_TYPE 137 
#define  POINTER_TYPE 136 
#define  REAL_TYPE 135 
#define  RECORD_TYPE 134 
#define  REFERENCE_TYPE 133 
#define  TEMPLATE_TYPE_PARM 132 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
#define  TYPENAME_TYPE 131 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
#define  UNION_TYPE 130 
#define  VECTOR_TYPE 129 
#define  VOID_TYPE 128 
 int /*<<< orphan*/  FUNC8 (struct arg_lookup*,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct arg_lookup*,int /*<<< orphan*/ ) ; 
 int FUNC10 (struct arg_lookup*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  unknown_type_node ; 

__attribute__((used)) static bool
FUNC14 (struct arg_lookup *k, tree type)
{
  /* As we do not get the type of non-type dependent expressions
     right, we can end up with such things without a type.  */
  if (!type)
    return false;

  if (FUNC6 (type))
    {
      /* Pointer to member: associate class type and value type.  */
      if (FUNC14 (k, FUNC5 (type)))
	return true;
      return FUNC14 (k, FUNC7 (type));
    }
  else switch (FUNC0 (type))
    {
    case ERROR_MARK:
      return false;
    case VOID_TYPE:
    case INTEGER_TYPE:
    case REAL_TYPE:
    case COMPLEX_TYPE:
    case VECTOR_TYPE:
    case BOOLEAN_TYPE:
      return false;
    case RECORD_TYPE:
      if (FUNC4 (type))
	return FUNC14 (k, FUNC3 (type));
      return FUNC9 (k, type);
    case POINTER_TYPE:
      /* APPLE LOCAL blocks 6040305 */
    case BLOCK_POINTER_TYPE:
    case REFERENCE_TYPE:
    case ARRAY_TYPE:
      return FUNC14 (k, FUNC1 (type));
    case UNION_TYPE:
    case ENUMERAL_TYPE:
      return FUNC10 (k, FUNC11 (type));
    case METHOD_TYPE:
      /* The basetype is referenced in the first arg type, so just
	 fall through.  */
    case FUNCTION_TYPE:
      /* Associate the parameter types.  */
      if (FUNC8 (k, FUNC2 (type)))
	return true;
      /* Associate the return type.  */
      return FUNC14 (k, FUNC1 (type));
    case TEMPLATE_TYPE_PARM:
    case BOUND_TEMPLATE_TEMPLATE_PARM:
      return false;
    case TYPENAME_TYPE:
      return false;
    case LANG_TYPE:
      FUNC12 (type == unknown_type_node);
      return false;
    default:
      FUNC13 ();
    }
  return false;
}