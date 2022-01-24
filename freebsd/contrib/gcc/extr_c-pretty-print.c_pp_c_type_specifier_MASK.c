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
#define  BOOLEAN_TYPE 137 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
#define  ENUMERAL_TYPE 136 
#define  ERROR_MARK 135 
#define  IDENTIFIER_NODE 134 
#define  INTEGER_TYPE 133 
#define  REAL_TYPE 132 
#define  RECORD_TYPE 131 
 int FUNC1 (int /*<<< orphan*/ ) ; 
#define  TYPE_DECL 130 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
#define  UNION_TYPE 129 
#define  VOID_TYPE 128 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void
FUNC14 (c_pretty_printer *pp, tree t)
{
  const enum tree_code code = FUNC1 (t);
  switch (code)
    {
    case ERROR_MARK:
      FUNC8 (pp, "<type-error>");
      break;

    case IDENTIFIER_NODE:
      FUNC9 (pp, t);
      break;

    case VOID_TYPE:
    case BOOLEAN_TYPE:
    case INTEGER_TYPE:
    case REAL_TYPE:
      if (FUNC3 (t))
	{
	  t = FUNC3 (t);
	  FUNC14 (pp, t);
	}
      else
	{
	  int prec = FUNC4 (t);
	  t = FUNC6 (FUNC2 (t), FUNC5 (t));
	  if (FUNC3 (t))
	    {
	      FUNC14 (pp, t);
	      if (FUNC4 (t) != prec)
		{
		  FUNC12 (pp, ":");
		  FUNC10 (pp, prec);
		}
	    }
	  else
	    {
	      switch (code)
		{
		case INTEGER_TYPE:
		  FUNC12 (pp, (FUNC5 (t)
				  ? "<unnamed-unsigned:"
				  : "<unnamed-signed:"));
		  break;
		case REAL_TYPE:
		  FUNC12 (pp, "<unnamed-float:");
		  break;
		default:
		  FUNC7 ();
		}
	      FUNC10 (pp, prec);
	      FUNC12 (pp, ">");
	    }
	}
      break;

    case TYPE_DECL:
      if (FUNC0 (t))
	FUNC11 (pp, t);
      else
	FUNC8 (pp, "<typedef-error>");
      break;

    case UNION_TYPE:
    case RECORD_TYPE:
    case ENUMERAL_TYPE:
      if (code == UNION_TYPE)
	FUNC8 (pp, "union");
      else if (code == RECORD_TYPE)
	FUNC8 (pp, "struct");
      else if (code == ENUMERAL_TYPE)
	FUNC8 (pp, "enum");
      else
	FUNC8 (pp, "<tag-error>");

      if (FUNC3 (t))
	FUNC11 (pp, FUNC3 (t));
      else
	FUNC8 (pp, "<anonymous>");
      break;

    default:
      FUNC13 (pp, t);
      break;
    }
}