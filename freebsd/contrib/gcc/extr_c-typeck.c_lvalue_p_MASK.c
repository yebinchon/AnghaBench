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
#define  ARRAY_REF 139 
 int ARRAY_TYPE ; 
#define  BIND_EXPR 138 
#define  COMPONENT_REF 137 
#define  COMPOUND_LITERAL_EXPR 136 
#define  ERROR_MARK 135 
 int FUNCTION_TYPE ; 
#define  IMAGPART_EXPR 134 
#define  INDIRECT_REF 133 
 int METHOD_TYPE ; 
#define  PARM_DECL 132 
#define  REALPART_EXPR 131 
#define  RESULT_DECL 130 
#define  STRING_CST 129 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
#define  VAR_DECL 128 

__attribute__((used)) static int
FUNC3 (tree ref)
{
  enum tree_code code = FUNC0 (ref);

  switch (code)
    {
    case REALPART_EXPR:
    case IMAGPART_EXPR:
    case COMPONENT_REF:
      return FUNC3 (FUNC1 (ref, 0));

    case COMPOUND_LITERAL_EXPR:
    case STRING_CST:
      return 1;

    case INDIRECT_REF:
    case ARRAY_REF:
    case VAR_DECL:
    case PARM_DECL:
    case RESULT_DECL:
    case ERROR_MARK:
      return (FUNC0 (FUNC2 (ref)) != FUNCTION_TYPE
	      && FUNC0 (FUNC2 (ref)) != METHOD_TYPE);

    case BIND_EXPR:
      return FUNC0 (FUNC2 (ref)) == ARRAY_TYPE;

    default:
      return 0;
    }
}