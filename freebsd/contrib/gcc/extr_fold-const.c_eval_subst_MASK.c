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
typedef  void* tree ;
typedef  enum tree_code_class { ____Placeholder_tree_code_class } tree_code_class ;
typedef  enum tree_code { ____Placeholder_tree_code } tree_code ;

/* Variables and functions */
#define  COMPOUND_EXPR 134 
#define  COND_EXPR 133 
#define  SAVE_EXPR 132 
 int FUNC0 (void*) ; 
 int FUNC1 (int) ; 
 void* FUNC2 (void*,int) ; 
 void* FUNC3 (void*) ; 
 int TRUTH_ANDIF_EXPR ; 
 int TRUTH_NOT_EXPR ; 
 int TRUTH_ORIF_EXPR ; 
 void* FUNC4 (int,void*,void*) ; 
 void* FUNC5 (int,void*,void*,void*) ; 
 void* FUNC6 (int,void*,void*,void*,void*) ; 
 int /*<<< orphan*/  FUNC7 (void*,void*,int /*<<< orphan*/ ) ; 
#define  tcc_binary 131 
#define  tcc_comparison 130 
#define  tcc_expression 129 
#define  tcc_unary 128 

__attribute__((used)) static tree
FUNC8 (tree arg, tree old0, tree new0, tree old1, tree new1)
{
  tree type = FUNC3 (arg);
  enum tree_code code = FUNC0 (arg);
  enum tree_code_class class = FUNC1 (code);

  /* We can handle some of the tcc_expression cases here.  */
  if (class == tcc_expression && code == TRUTH_NOT_EXPR)
    class = tcc_unary;
  else if (class == tcc_expression
	   && (code == TRUTH_ANDIF_EXPR || code == TRUTH_ORIF_EXPR))
    class = tcc_binary;

  switch (class)
    {
    case tcc_unary:
      return FUNC4 (code, type,
			  FUNC8 (FUNC2 (arg, 0),
				      old0, new0, old1, new1));

    case tcc_binary:
      return FUNC5 (code, type,
			  FUNC8 (FUNC2 (arg, 0),
				      old0, new0, old1, new1),
			  FUNC8 (FUNC2 (arg, 1),
				      old0, new0, old1, new1));

    case tcc_expression:
      switch (code)
	{
	case SAVE_EXPR:
	  return FUNC8 (FUNC2 (arg, 0), old0, new0, old1, new1);

	case COMPOUND_EXPR:
	  return FUNC8 (FUNC2 (arg, 1), old0, new0, old1, new1);

	case COND_EXPR:
	  return FUNC6 (code, type,
			      FUNC8 (FUNC2 (arg, 0),
					  old0, new0, old1, new1),
			      FUNC8 (FUNC2 (arg, 1),
					  old0, new0, old1, new1),
			      FUNC8 (FUNC2 (arg, 2),
					  old0, new0, old1, new1));
	default:
	  break;
	}
      /* Fall through - ???  */

    case tcc_comparison:
      {
	tree arg0 = FUNC2 (arg, 0);
	tree arg1 = FUNC2 (arg, 1);

	/* We need to check both for exact equality and tree equality.  The
	   former will be true if the operand has a side-effect.  In that
	   case, we know the operand occurred exactly once.  */

	if (arg0 == old0 || FUNC7 (arg0, old0, 0))
	  arg0 = new0;
	else if (arg0 == old1 || FUNC7 (arg0, old1, 0))
	  arg0 = new1;

	if (arg1 == old0 || FUNC7 (arg1, old0, 0))
	  arg1 = new0;
	else if (arg1 == old1 || FUNC7 (arg1, old1, 0))
	  arg1 = new1;

	return FUNC5 (code, type, arg0, arg1);
      }

    default:
      return arg;
    }
}