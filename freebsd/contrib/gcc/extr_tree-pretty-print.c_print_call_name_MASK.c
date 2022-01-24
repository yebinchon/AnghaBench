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
typedef  int /*<<< orphan*/  pretty_printer ;

/* Variables and functions */
#define  ADDR_EXPR 137 
#define  ARRAY_REF 136 
 int const CALL_EXPR ; 
#define  COMPONENT_REF 135 
#define  COND_EXPR 134 
#define  INDIRECT_REF 133 
 int /*<<< orphan*/  NIY ; 
 int const NON_LVALUE_EXPR ; 
#define  NOP_EXPR 132 
#define  OBJ_TYPE_REF 131 
#define  PARM_DECL 130 
#define  SSA_NAME 129 
 int const FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
#define  VAR_DECL 128 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static void
FUNC6 (pretty_printer *buffer, tree node)
{
  tree op0;

  FUNC4 (FUNC0 (node) == CALL_EXPR);

  op0 = FUNC1 (node, 0);

  if (FUNC0 (op0) == NON_LVALUE_EXPR)
    op0 = FUNC1 (op0, 0);

  switch (FUNC0 (op0))
    {
    case VAR_DECL:
    case PARM_DECL:
      FUNC2 (buffer, op0);
      break;

    case ADDR_EXPR:
    case INDIRECT_REF:
    case NOP_EXPR:
      FUNC3 (buffer, FUNC1 (op0, 0), 0, 0, false);
      break;

    case COND_EXPR:
      FUNC5 (buffer, "(");
      FUNC3 (buffer, FUNC1 (op0, 0), 0, 0, false);
      FUNC5 (buffer, ") ? ");
      FUNC3 (buffer, FUNC1 (op0, 1), 0, 0, false);
      FUNC5 (buffer, " : ");
      FUNC3 (buffer, FUNC1 (op0, 2), 0, 0, false);
      break;

    case COMPONENT_REF:
      /* The function is a pointer contained in a structure.  */
      if (FUNC0 (FUNC1 (op0, 0)) == INDIRECT_REF ||
	  FUNC0 (FUNC1 (op0, 0)) == VAR_DECL)
	FUNC2 (buffer, FUNC1 (op0, 1));
      else
	FUNC3 (buffer, FUNC1 (op0, 0), 0, 0, false);
      /* else
	 We can have several levels of structures and a function
	 pointer inside.  This is not implemented yet...  */
      /*		  NIY;*/
      break;

    case ARRAY_REF:
      if (FUNC0 (FUNC1 (op0, 0)) == VAR_DECL)
	FUNC2 (buffer, FUNC1 (op0, 0));
      else
	FUNC3 (buffer, op0, 0, 0, false);
      break;

    case SSA_NAME:
    case OBJ_TYPE_REF:
      FUNC3 (buffer, op0, 0, 0, false);
      break;

    default:
      NIY;
    }
}