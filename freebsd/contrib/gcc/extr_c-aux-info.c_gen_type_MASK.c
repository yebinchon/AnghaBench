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
typedef  int /*<<< orphan*/  formals_style ;

/* Variables and functions */
#define  ARRAY_TYPE 139 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
#define  ENUMERAL_TYPE 138 
#define  ERROR_MARK 137 
#define  FUNCTION_TYPE 136 
#define  IDENTIFIER_NODE 135 
 char const* FUNC2 (scalar_t__) ; 
 int INTEGER_CST ; 
#define  INTEGER_TYPE 134 
#define  POINTER_TYPE 133 
#define  REAL_TYPE 132 
#define  RECORD_TYPE 131 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
#define  TYPE_DECL 130 
 scalar_t__ FUNC7 (scalar_t__) ; 
 scalar_t__ FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__) ; 
 scalar_t__ FUNC10 (scalar_t__) ; 
 scalar_t__ FUNC11 (scalar_t__) ; 
 scalar_t__ FUNC12 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__) ; 
 scalar_t__ FUNC14 (scalar_t__) ; 
 scalar_t__ FUNC15 (scalar_t__) ; 
#define  UNION_TYPE 129 
#define  VOID_TYPE 128 
 int /*<<< orphan*/  ansi ; 
 char* FUNC16 (char const*,char const*,char*,...) ; 
 char const* data_type ; 
 int /*<<< orphan*/  FUNC17 () ; 
 char const* FUNC18 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char const* FUNC19 (scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC20 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC21 (char*,char*,int) ; 

__attribute__((used)) static const char *
FUNC22 (const char *ret_val, tree t, formals_style style)
{
  tree chain_p;

  /* If there is a typedef name for this type, use it.  */
  if (FUNC8 (t) && FUNC4 (FUNC8 (t)) == TYPE_DECL)
    data_type = FUNC2 (FUNC1 (FUNC8 (t)));
  else
    {
      switch (FUNC4 (t))
	{
	case POINTER_TYPE:
	  if (FUNC10 (t))
	    ret_val = FUNC16 ("const ", ret_val, NULL);
	  if (FUNC15 (t))
	    ret_val = FUNC16 ("volatile ", ret_val, NULL);

	  ret_val = FUNC16 ("*", ret_val, NULL);

	  if (FUNC4 (FUNC6 (t)) == ARRAY_TYPE || FUNC4 (FUNC6 (t)) == FUNCTION_TYPE)
	    ret_val = FUNC16 ("(", ret_val, ")", NULL);

	  ret_val = FUNC22 (ret_val, FUNC6 (t), style);

	  return ret_val;

	case ARRAY_TYPE:
	  if (!FUNC0 (t) || FUNC4 (FUNC12 (t)) != INTEGER_CST)
	    ret_val = FUNC22 (FUNC16 (ret_val, "[]", NULL),
				FUNC6 (t), style);
	  else if (FUNC20 (t) == 0)
	    ret_val = FUNC22 (FUNC16 (ret_val, "[0]", NULL),
				FUNC6 (t), style);
	  else
	    {
	      int size = (FUNC20 (t) / FUNC20 (FUNC6 (t)));
	      char buff[10];
	      FUNC21 (buff, "[%d]", size);
	      ret_val = FUNC22 (FUNC16 (ret_val, buff, NULL),
				  FUNC6 (t), style);
	    }
	  break;

	case FUNCTION_TYPE:
	  ret_val = FUNC22 (FUNC16 (ret_val,
				      FUNC19 (t, style),
				      NULL),
			      FUNC6 (t), style);
	  break;

	case IDENTIFIER_NODE:
	  data_type = FUNC2 (t);
	  break;

	/* The following three cases are complicated by the fact that a
	   user may do something really stupid, like creating a brand new
	   "anonymous" type specification in a formal argument list (or as
	   part of a function return type specification).  For example:

		int f (enum { red, green, blue } color);

	   In such cases, we have no name that we can put into the prototype
	   to represent the (anonymous) type.  Thus, we have to generate the
	   whole darn type specification.  Yuck!  */

	case RECORD_TYPE:
	  if (FUNC8 (t))
	    data_type = FUNC2 (FUNC8 (t));
	  else
	    {
	      data_type = "";
	      chain_p = FUNC7 (t);
	      while (chain_p)
		{
		  data_type = FUNC16 (data_type, FUNC18 (chain_p, 0, ansi),
				      NULL);
		  chain_p = FUNC3 (chain_p);
		  data_type = FUNC16 (data_type, "; ", NULL);
		}
	      data_type = FUNC16 ("{ ", data_type, "}", NULL);
	    }
	  data_type = FUNC16 ("struct ", data_type, NULL);
	  break;

	case UNION_TYPE:
	  if (FUNC8 (t))
	    data_type = FUNC2 (FUNC8 (t));
	  else
	    {
	      data_type = "";
	      chain_p = FUNC7 (t);
	      while (chain_p)
		{
		  data_type = FUNC16 (data_type, FUNC18 (chain_p, 0, ansi),
				      NULL);
		  chain_p = FUNC3 (chain_p);
		  data_type = FUNC16 (data_type, "; ", NULL);
		}
	      data_type = FUNC16 ("{ ", data_type, "}", NULL);
	    }
	  data_type = FUNC16 ("union ", data_type, NULL);
	  break;

	case ENUMERAL_TYPE:
	  if (FUNC8 (t))
	    data_type = FUNC2 (FUNC8 (t));
	  else
	    {
	      data_type = "";
	      chain_p = FUNC14 (t);
	      while (chain_p)
		{
		  data_type = FUNC16 (data_type,
			FUNC2 (FUNC5 (chain_p)), NULL);
		  chain_p = FUNC3 (chain_p);
		  if (chain_p)
		    data_type = FUNC16 (data_type, ", ", NULL);
		}
	      data_type = FUNC16 ("{ ", data_type, " }", NULL);
	    }
	  data_type = FUNC16 ("enum ", data_type, NULL);
	  break;

	case TYPE_DECL:
	  data_type = FUNC2 (FUNC1 (t));
	  break;

	case INTEGER_TYPE:
	  data_type = FUNC2 (FUNC1 (FUNC8 (t)));
	  /* Normally, `unsigned' is part of the deal.  Not so if it comes
	     with a type qualifier.  */
	  if (FUNC13 (t) && FUNC9 (t))
	    data_type = FUNC16 ("unsigned ", data_type, NULL);
	  break;

	case REAL_TYPE:
	  data_type = FUNC2 (FUNC1 (FUNC8 (t)));
	  break;

	case VOID_TYPE:
	  data_type = "void";
	  break;

	case ERROR_MARK:
	  data_type = "[ERROR]";
	  break;

	default:
	  FUNC17 ();
	}
    }
  if (FUNC10 (t))
    ret_val = FUNC16 ("const ", ret_val, NULL);
  if (FUNC15 (t))
    ret_val = FUNC16 ("volatile ", ret_val, NULL);
  if (FUNC11 (t))
    ret_val = FUNC16 ("restrict ", ret_val, NULL);
  return ret_val;
}