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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNCTION_DECL ; 
 int /*<<< orphan*/  LSHIFT_EXPR ; 
 int /*<<< orphan*/  MULT_EXPR ; 
 int /*<<< orphan*/  PLUS_EXPR ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int TARGET_PTRMEMFUNC_VBIT_LOCATION ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int) ; 
 int /*<<< orphan*/  FUNC17 () ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  integer_one_node ; 
 int /*<<< orphan*/  integer_type_node ; 
#define  ptrmemfunc_vbit_in_delta 129 
#define  ptrmemfunc_vbit_in_pfn 128 
 int /*<<< orphan*/  vtable_entry_type ; 

void
FUNC19 (tree cst, tree *delta, tree *pfn)
{
  tree type = FUNC6 (cst);
  tree fn = FUNC4 (cst);
  tree ptr_class, fn_class;

  FUNC16 (FUNC5 (fn) == FUNCTION_DECL);

  /* The class that the function belongs to.  */
  fn_class = FUNC1 (fn);

  /* The class that we're creating a pointer to member of.  */
  ptr_class = FUNC8 (type);

  /* First, calculate the adjustment to the function's class.  */
  *delta = FUNC18 (fn_class, ptr_class, /*force=*/0,
				 /*c_cast_p=*/0);

  if (!FUNC3 (fn))
    *pfn = FUNC14 (FUNC7 (type), FUNC12 (fn));
  else
    {
      /* If we're dealing with a virtual function, we have to adjust 'this'
	 again, to point to the base which provides the vtable entry for
	 fn; the call will do the opposite adjustment.  */
      tree orig_class = FUNC1 (fn);
      tree binfo = FUNC10 (orig_class, fn_class);
      *delta = FUNC11 (PLUS_EXPR, FUNC6 (*delta),
		       *delta, FUNC0 (binfo));
      *delta = FUNC15 (*delta);

      /* We set PFN to the vtable offset at which the function can be
	 found, plus one (unless ptrmemfunc_vbit_in_delta, in which
	 case delta is shifted left, and then incremented).  */
      *pfn = FUNC2 (fn);
      *pfn = FUNC11 (MULT_EXPR, integer_type_node, *pfn,
		     FUNC9 (vtable_entry_type));
      *pfn = FUNC15 (*pfn);

      switch (TARGET_PTRMEMFUNC_VBIT_LOCATION)
	{
	case ptrmemfunc_vbit_in_pfn:
	  *pfn = FUNC11 (PLUS_EXPR, integer_type_node, *pfn,
			 integer_one_node);
	  *pfn = FUNC15 (*pfn);
	  break;

	case ptrmemfunc_vbit_in_delta:
	  *delta = FUNC11 (LSHIFT_EXPR, FUNC6 (*delta),
			   *delta, integer_one_node);
	  *delta = FUNC15 (*delta);
	  *delta = FUNC11 (PLUS_EXPR, FUNC6 (*delta),
			   *delta, integer_one_node);
	  *delta = FUNC15 (*delta);
	  break;

	default:
	  FUNC17 ();
	}

      *pfn = FUNC13 (FUNC7 (type), *pfn);
      *pfn = FUNC15 (*pfn);
    }
}