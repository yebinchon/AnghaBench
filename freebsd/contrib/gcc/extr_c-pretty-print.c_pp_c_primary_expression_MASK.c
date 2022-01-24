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
typedef  int /*<<< orphan*/  c_pretty_printer ;

/* Variables and functions */
#define  CONST_DECL 140 
#define  ERROR_MARK 139 
#define  FIELD_DECL 138 
#define  FUNCTION_DECL 137 
#define  IDENTIFIER_NODE 136 
#define  INTEGER_CST 135 
#define  LABEL_DECL 134 
#define  PARM_DECL 133 
#define  REAL_CST 132 
#define  RESULT_DECL 131 
#define  STRING_CST 130 
#define  TARGET_EXPR 129 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
#define  VAR_DECL 128 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,char) ; 

void
FUNC14 (c_pretty_printer *pp, tree e)
{
  switch (FUNC0 (e))
    {
    case VAR_DECL:
    case PARM_DECL:
    case FIELD_DECL:
    case CONST_DECL:
    case FUNCTION_DECL:
    case LABEL_DECL:
      FUNC8 (pp, e);
      break;

    case IDENTIFIER_NODE:
      FUNC9 (pp, e);
      break;

    case ERROR_MARK:
      FUNC5 (pp, "<erroneous-expression>");
      break;

    case RESULT_DECL:
      FUNC5 (pp, "<return-value>");
      break;

    case INTEGER_CST:
    case REAL_CST:
    case STRING_CST:
      FUNC3 (pp, e);
      break;

    case TARGET_EXPR:
      FUNC5 (pp, "__builtin_memcpy");
      FUNC6 (pp);
      FUNC2 (pp);
      FUNC12 (pp, FUNC1 (e, 0));
      FUNC13 (pp, ',');
      FUNC2 (pp);
      FUNC11 (pp, FUNC1 (e, 1));
      if (FUNC1 (e, 2))
	{
	  FUNC13 (pp, ',');
	  FUNC4 (pp, FUNC1 (e, 2));
	}
      FUNC7 (pp);
      break;

    default:
      /* FIXME:  Make sure we won't get into an infinie loop.  */
      FUNC6 (pp);
      FUNC10 (pp, e);
      FUNC7 (pp);
      break;
    }
}