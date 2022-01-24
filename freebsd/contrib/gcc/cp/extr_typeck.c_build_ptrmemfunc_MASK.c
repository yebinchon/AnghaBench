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
typedef  char* tree ;

/* Variables and functions */
 scalar_t__ FUNCTION_DECL ; 
 int /*<<< orphan*/  LOOKUP_NORMAL ; 
 int /*<<< orphan*/  LSHIFT_EXPR ; 
 char* NULL_TREE ; 
 scalar_t__ OFFSET_REF ; 
 int /*<<< orphan*/  PLUS_EXPR ; 
 scalar_t__ PTRMEM_CST ; 
 scalar_t__ TARGET_PTRMEMFUNC_VBIT_LOCATION ; 
 scalar_t__ FUNC0 (char*) ; 
 char* FUNC1 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (char*) ; 
 char* FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 scalar_t__ FUNC5 (char*) ; 
 char* FUNC6 (char*,char*) ; 
 char* FUNC7 (char*,char*,char*) ; 
 char* FUNC8 (char*,int /*<<< orphan*/ ) ; 
 char* FUNC9 (char*) ; 
 char* FUNC10 (char*,char*) ; 
 int /*<<< orphan*/  FUNC11 (char*,char*,char*,int /*<<< orphan*/ ) ; 
 char* FUNC12 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  delta_identifier ; 
 int /*<<< orphan*/  FUNC13 (char*,char*,char*) ; 
 char* error_mark_node ; 
 scalar_t__ FUNC14 (char*) ; 
 int /*<<< orphan*/  FUNC15 (char*,char**,char**) ; 
 int /*<<< orphan*/  FUNC16 (int) ; 
 char* FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 char* FUNC18 (char*,char*,int /*<<< orphan*/ ) ; 
 char* integer_one_node ; 
 char* integer_zero_node ; 
 scalar_t__ FUNC19 (char*) ; 
 char* FUNC20 (char*,char*) ; 
 int /*<<< orphan*/  pfn_identifier ; 
 scalar_t__ processing_template_decl ; 
 int /*<<< orphan*/  ptrdiff_type_node ; 
 scalar_t__ ptrmemfunc_vbit_in_delta ; 
 int FUNC21 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC22 (char*,char*) ; 
 char* FUNC23 (char*) ; 
 int /*<<< orphan*/  tf_warning_or_error ; 
 scalar_t__ FUNC24 (char*) ; 

tree
FUNC25 (tree type, tree pfn, int force, bool c_cast_p)
{
  tree fn;
  tree pfn_type;
  tree to_type;

  if (FUNC14 (pfn))
    return error_mark_node;

  pfn_type = FUNC3 (pfn);
  to_type = FUNC9 (type);

  /* Handle multiple conversions of pointer to member functions.  */
  if (FUNC5 (pfn_type))
    {
      tree delta = NULL_TREE;
      tree npfn = NULL_TREE;
      tree n;

      if (!force
	  && !FUNC11 (to_type, FUNC3 (pfn), pfn, LOOKUP_NORMAL))
	FUNC13 ("invalid conversion to type %qT from type %qT",
	       to_type, pfn_type);

      n = FUNC17 (FUNC4 (pfn_type),
				FUNC4 (to_type),
				force,
				c_cast_p);

      /* We don't have to do any conversion to convert a
	 pointer-to-member to its own type.  But, we don't want to
	 just return a PTRMEM_CST if there's an explicit cast; that
	 cast should make the expression an invalid template argument.  */
      if (FUNC0 (pfn) != PTRMEM_CST)
	{
	  if (FUNC22 (to_type, pfn_type))
	    return pfn;
	  else if (FUNC19 (n))
	    return FUNC10 (to_type, pfn);
	}

      if (FUNC2 (pfn))
	pfn = FUNC23 (pfn);

      /* Obtain the function pointer and the current DELTA.  */
      if (FUNC0 (pfn) == PTRMEM_CST)
	FUNC15 (pfn, &delta, &npfn);
      else
	{
	  npfn = FUNC8 (pfn, pfn_identifier);
	  delta = FUNC8 (pfn, delta_identifier);
	}

      /* Just adjust the DELTA field.  */
      FUNC16  (FUNC21
		   (FUNC3 (delta), ptrdiff_type_node));
      if (TARGET_PTRMEMFUNC_VBIT_LOCATION == ptrmemfunc_vbit_in_delta)
	n = FUNC12 (LSHIFT_EXPR, n, integer_one_node);
      delta = FUNC12 (PLUS_EXPR, delta, n);
      return FUNC7 (to_type, delta, npfn);
    }

  /* Handle null pointer to member function conversions.  */
  if (FUNC19 (pfn))
    {
      pfn = FUNC6 (type, integer_zero_node);
      return FUNC7 (to_type,
				integer_zero_node,
				pfn);
    }

  if (FUNC24 (pfn))
    return FUNC18 (type, pfn, tf_warning_or_error);

  fn = FUNC1 (pfn, 0);
  FUNC16 (FUNC0 (fn) == FUNCTION_DECL
	      /* In a template, we will have preserved the
		 OFFSET_REF.  */
	      || (processing_template_decl && FUNC0 (fn) == OFFSET_REF));
  return FUNC20 (to_type, fn);
}