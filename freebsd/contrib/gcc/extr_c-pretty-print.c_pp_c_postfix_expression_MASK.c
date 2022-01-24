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
typedef  int /*<<< orphan*/  c_pretty_printer ;

/* Variables and functions */
#define  ABS_EXPR 148 
#define  ADDR_EXPR 147 
#define  ARRAY_REF 146 
#define  CALL_EXPR 145 
#define  COMPLEX_CST 144 
#define  COMPLEX_EXPR 143 
#define  COMPONENT_REF 142 
#define  COMPOUND_LITERAL_EXPR 141 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
#define  CONSTRUCTOR 140 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNCTION_DECL ; 
 int INDIRECT_REF ; 
#define  LTGT_EXPR 139 
#define  ORDERED_EXPR 138 
#define  POSTDECREMENT_EXPR 137 
#define  POSTINCREMENT_EXPR 136 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
#define  UNEQ_EXPR 135 
#define  UNGE_EXPR 134 
#define  UNGT_EXPR 133 
#define  UNLE_EXPR 132 
#define  UNLT_EXPR 131 
#define  UNORDERED_EXPR 130 
#define  VA_ARG_EXPR 129 
#define  VECTOR_CST 128 
 int /*<<< orphan*/  flag_isoc99 ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *,char) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void
FUNC23 (c_pretty_printer *pp, tree e)
{
  enum tree_code code = FUNC2 (e);
  switch (code)
    {
    case POSTINCREMENT_EXPR:
    case POSTDECREMENT_EXPR:
      FUNC19 (pp, FUNC3 (e, 0));
      FUNC17 (pp, code == POSTINCREMENT_EXPR ? "++" : "--");
      break;

    case ARRAY_REF:
      FUNC19 (pp, FUNC3 (e, 0));
      FUNC12 (pp);
      FUNC16 (pp, FUNC3 (e, 1));
      FUNC14 (pp);
      break;

    case CALL_EXPR:
      FUNC19 (pp, FUNC3 (e, 0));
      FUNC7 (pp, FUNC3 (e, 1));
      break;

    case UNORDERED_EXPR:
      FUNC11 (pp, flag_isoc99
			   ? "isunordered"
			   : "__builtin_isunordered");
      goto two_args_fun;

    case ORDERED_EXPR:
      FUNC11 (pp, flag_isoc99
			   ? "!isunordered"
			   : "!__builtin_isunordered");
      goto two_args_fun;

    case UNLT_EXPR:
      FUNC11 (pp, flag_isoc99
			   ? "!isgreaterequal"
			   : "!__builtin_isgreaterequal");
      goto two_args_fun;

    case UNLE_EXPR:
      FUNC11 (pp, flag_isoc99
			   ? "!isgreater"
			   : "!__builtin_isgreater");
      goto two_args_fun;

    case UNGT_EXPR:
      FUNC11 (pp, flag_isoc99
			   ? "!islessequal"
			   : "!__builtin_islessequal");
      goto two_args_fun;

    case UNGE_EXPR:
      FUNC11 (pp, flag_isoc99
			   ? "!isless"
			   : "!__builtin_isless");
      goto two_args_fun;

    case UNEQ_EXPR:
      FUNC11 (pp, flag_isoc99
			   ? "!islessgreater"
			   : "!__builtin_islessgreater");
      goto two_args_fun;

    case LTGT_EXPR:
      FUNC11 (pp, flag_isoc99
			   ? "islessgreater"
			   : "__builtin_islessgreater");
      goto two_args_fun;

    two_args_fun:
      FUNC13 (pp);
      FUNC16 (pp, FUNC3 (e, 0));
      FUNC21 (pp, ',');
      FUNC16 (pp, FUNC3 (e, 1));
      FUNC15 (pp);
      break;

    case ABS_EXPR:
      FUNC11 (pp, "__builtin_abs");
      FUNC13 (pp);
      FUNC16 (pp, FUNC3 (e, 0));
      FUNC15 (pp);
      break;

    case COMPONENT_REF:
      {
	tree object = FUNC3 (e, 0);
	if (FUNC2 (object) == INDIRECT_REF)
	  {
	    FUNC19 (pp, FUNC3 (object, 0));
	    FUNC6 (pp);
	  }
	else
	  {
	    FUNC19 (pp, object);
	    FUNC9 (pp);
	  }
	FUNC16 (pp, FUNC3 (e, 1));
      }
      break;

    case COMPLEX_CST:
    case VECTOR_CST:
    case COMPLEX_EXPR:
      FUNC8 (pp, e);
      break;

    case COMPOUND_LITERAL_EXPR:
      e = FUNC1 (FUNC0 (e));
      /* Fall through.  */
    case CONSTRUCTOR:
      FUNC18 (pp, e);
      break;

    case VA_ARG_EXPR:
      FUNC11 (pp, "__builtin_va_arg");
      FUNC13 (pp);
      FUNC5 (pp, FUNC3 (e, 0));
      FUNC21 (pp, ',');
      FUNC22 (pp, FUNC4 (e));
      FUNC15 (pp);
      break;

    case ADDR_EXPR:
      if (FUNC2 (FUNC3 (e, 0)) == FUNCTION_DECL)
	{
	  FUNC10 (pp, FUNC3 (e, 0));
	  break;
	}
      /* else fall through.  */

    default:
      FUNC20 (pp, e);
      break;
    }
}