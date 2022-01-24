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
typedef  int /*<<< orphan*/  cxx_pretty_printer ;

/* Variables and functions */
#define  BASELINK 143 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
#define  CONST_DECL 142 
#define  FIELD_DECL 141 
#define  FUNCTION_DECL 140 
#define  INTEGER_CST 139 
#define  OVERLOAD 138 
#define  PARM_DECL 137 
#define  REAL_CST 136 
#define  RESULT_DECL 135 
#define  STMT_EXPR 134 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
#define  STRING_CST 133 
#define  TEMPLATE_DECL 132 
#define  TEMPLATE_PARM_INDEX 131 
#define  TEMPLATE_TEMPLATE_PARM 130 
#define  TEMPLATE_TYPE_PARM 129 
 int FUNC2 (int /*<<< orphan*/ ) ; 
#define  VAR_DECL 128 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC11 (cxx_pretty_printer *pp, tree t)
{
  switch (FUNC2 (t))
    {
    case INTEGER_CST:
    case REAL_CST:
    case STRING_CST:
      FUNC5 (pp, t);
      break;

    case BASELINK:
      t = FUNC0 (t);
    case VAR_DECL:
    case PARM_DECL:
    case FIELD_DECL:
    case FUNCTION_DECL:
    case OVERLOAD:
    case CONST_DECL:
    case TEMPLATE_DECL:
      FUNC6 (pp, t);
      break;

    case RESULT_DECL:
    case TEMPLATE_TYPE_PARM:
    case TEMPLATE_TEMPLATE_PARM:
    case TEMPLATE_PARM_INDEX:
      FUNC10 (pp, t);
      break;

    case STMT_EXPR:
      FUNC7 (pp);
      FUNC9 (pp, FUNC1 (t));
      FUNC8 (pp);
      break;

    default:
      FUNC4 (FUNC3 (pp), t);
      break;
    }
}