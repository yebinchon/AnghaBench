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
typedef  enum tree_code { ____Placeholder_tree_code } tree_code ;
typedef  scalar_t__ base_kind ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  CONVERT_EXPR ; 
 scalar_t__ FUNCTION_TYPE ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 scalar_t__ METHOD_TYPE ; 
 int MINUS_EXPR ; 
 int /*<<< orphan*/  NOP_EXPR ; 
 scalar_t__ NULL_TREE ; 
 scalar_t__ OFFSET_REF ; 
 int PLUS_EXPR ; 
 scalar_t__ POINTER_SIZE ; 
 scalar_t__ POINTER_TYPE ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 scalar_t__ PTRMEM_CST ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 scalar_t__ RECORD_TYPE ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 scalar_t__ FUNC8 (scalar_t__,int) ; 
 scalar_t__ FUNC9 (scalar_t__) ; 
 scalar_t__ FUNC10 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__) ; 
 scalar_t__ FUNC12 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__) ; 
 scalar_t__ FUNC14 (scalar_t__) ; 
 scalar_t__ FUNC15 (scalar_t__) ; 
 scalar_t__ FUNC16 (scalar_t__) ; 
 scalar_t__ FUNC17 (scalar_t__) ; 
 scalar_t__ FUNC18 (scalar_t__) ; 
 int /*<<< orphan*/  ba_check ; 
 scalar_t__ bk_via_virtual ; 
 scalar_t__ FUNC19 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC20 (int,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC21 (scalar_t__,int) ; 
 scalar_t__ FUNC22 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC23 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC24 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC25 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC26 (scalar_t__) ; 
 scalar_t__ FUNC27 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC28 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC29 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC30 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC31 (char*,scalar_t__,scalar_t__,...) ; 
 scalar_t__ error_mark_node ; 
 scalar_t__ FUNC32 (scalar_t__,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC33 (int) ; 
 scalar_t__ FUNC34 (scalar_t__*,scalar_t__) ; 
 scalar_t__ FUNC35 (scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC36 (scalar_t__) ; 
 scalar_t__ FUNC37 (scalar_t__,scalar_t__,int /*<<< orphan*/ ,scalar_t__*) ; 
 int FUNC38 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC39 (int,scalar_t__,scalar_t__) ; 
 scalar_t__ sizetype ; 
 int /*<<< orphan*/  tf_warning_or_error ; 
 scalar_t__ FUNC40 (scalar_t__) ; 
 int /*<<< orphan*/  warn_pmf2ptr ; 
 int /*<<< orphan*/  FUNC41 (int /*<<< orphan*/ ,char*,scalar_t__,scalar_t__) ; 

__attribute__((used)) static tree
FUNC42 (tree type, tree expr, bool force)
{
  tree intype = FUNC9 (expr);
  enum tree_code form;
  tree rval;
  if (intype == error_mark_node)
    return error_mark_node;

  if (FUNC4 (intype))
    {
      intype = FUNC26 (intype);
      if (!FUNC1 (intype))
	{
	  FUNC31 ("can't convert from incomplete type %qT to %qT",
		 intype, type);
	  return error_mark_node;
	}

      rval = FUNC24 (type, expr);
      if (rval)
	{
	  if (rval == error_mark_node)
	    FUNC31 ("conversion of %qE from %qT to %qT is ambiguous",
		   expr, intype, type);
	  return rval;
	}
    }

  /* Handle anachronistic conversions from (::*)() to cv void* or (*)().  */
  if (FUNC7 (type) == POINTER_TYPE
      && (FUNC7 (FUNC9 (type)) == FUNCTION_TYPE
	  || FUNC18 (FUNC9 (type))))
    {
      if (FUNC14 (intype)
	  || FUNC7 (intype) == METHOD_TYPE)
	return FUNC27 (type, expr);
      if (FUNC7 (FUNC9 (expr)) == POINTER_TYPE)
	return FUNC22 (type, expr);
      intype = FUNC9 (expr);
    }

  if (expr == error_mark_node)
    return error_mark_node;

  form = FUNC7 (intype);

  if (FUNC5 (intype))
    {
      intype = FUNC10 (intype);

      if (FUNC10 (type) != intype
	  && FUNC7 (type) == POINTER_TYPE
	  && FUNC7 (FUNC9 (type)) == RECORD_TYPE
	  && FUNC4 (FUNC9 (type))
	  && FUNC4 (FUNC9 (intype))
	  && FUNC7 (FUNC9 (intype)) == RECORD_TYPE)
	{
	  enum tree_code code = PLUS_EXPR;
	  tree binfo;
	  tree intype_class;
	  tree type_class;
	  bool same_p;

	  intype_class = FUNC9 (intype);
	  type_class = FUNC9 (type);

	  same_p = FUNC38 (FUNC10 (intype_class),
				FUNC10 (type_class));
	  binfo = NULL_TREE;
	  /* Try derived to base conversion.  */
	  if (!same_p)
	    binfo = FUNC37 (intype_class, type_class, ba_check, NULL);
	  if (!same_p && !binfo)
	    {
	      /* Try base to derived conversion.  */
	      binfo = FUNC37 (type_class, intype_class, ba_check, NULL);
	      code = MINUS_EXPR;
	    }
	  if (binfo == error_mark_node)
	    return error_mark_node;
	  if (binfo || same_p)
	    {
	      if (binfo)
		expr = FUNC20 (code, expr, binfo, 0);
	      /* Add any qualifier conversions.  */
	      return FUNC22 (type, expr);
	    }
	}

      if (FUNC14 (type))
	{
	  FUNC31 ("cannot convert %qE from type %qT to type %qT",
		 expr, intype, type);
	  return error_mark_node;
	}

      return FUNC22 (type, expr);
    }
  else if (FUNC16 (type) && FUNC16 (intype))
    {
      tree b1;
      tree b2;
      tree binfo;
      enum tree_code code = PLUS_EXPR;
      base_kind bk;

      b1 = FUNC15 (type);
      b2 = FUNC15 (intype);
      binfo = FUNC37 (b1, b2, ba_check, &bk);
      if (!binfo)
	{
	  binfo = FUNC37 (b2, b1, ba_check, &bk);
	  code = MINUS_EXPR;
	}
      if (binfo == error_mark_node)
	return error_mark_node;

      if (bk == bk_via_virtual)
	{
	  if (force)
	    FUNC41 (0, "pointer to member cast from %qT to %qT is via"
		     " virtual base", intype, type);
	  else
	    {
	      FUNC31 ("pointer to member cast from %qT to %qT is"
		     " via virtual base", intype, type);
	      return error_mark_node;
	    }
	  /* This is a reinterpret cast, whose result is unspecified.
	     We choose to do nothing.  */
	  return FUNC19 (NOP_EXPR, type, expr);
	}

      if (FUNC7 (expr) == PTRMEM_CST)
	expr = FUNC30 (expr);

      if (binfo && !FUNC36 (FUNC0 (binfo)))
	expr = FUNC39 (code,
			   FUNC22 (sizetype, expr),
			   FUNC0 (binfo));
      return FUNC22 (type, expr);
    }
  else if (FUNC14 (type) && FUNC14 (intype))
    return FUNC23 (FUNC13 (type), expr, 0,
			     /*c_cast_p=*/false);
  else if (FUNC14 (intype))
    {
      if (!warn_pmf2ptr)
	{
	  if (FUNC7 (expr) == PTRMEM_CST)
	    return FUNC42 (type,
					  FUNC6 (expr),
					  force);
	  else if (FUNC7 (expr) == OFFSET_REF)
	    {
	      tree object = FUNC8 (expr, 0);
	      return FUNC34 (&object,
						       FUNC8 (expr, 1));
	    }
	}
      FUNC31 ("cannot convert %qE from type %qT to type %qT",
	     expr, intype, type);
      return error_mark_node;
    }

  if (FUNC36 (expr))
    {
      if (FUNC14 (type))
	return FUNC23 (FUNC13 (type), expr, 0,
				 /*c_cast_p=*/false);

      if (FUNC16 (type))
	{
	  /* A NULL pointer-to-member is represented by -1, not by
	     zero.  */
	  expr = FUNC21 (type, -1);
	  /* Fix up the representation of -1 if appropriate.  */
	  expr = FUNC32 (expr, 0, false, false);
	}
      else
	expr = FUNC21 (type, 0);

      return expr;
    }
  else if (FUNC17 (type) && FUNC3 (form))
    {
      FUNC31 ("invalid conversion from %qT to %qT", intype, type);
      return error_mark_node;
    }

  if (FUNC3 (form))
    {
      if (FUNC12 (intype) == POINTER_SIZE)
	return FUNC19 (CONVERT_EXPR, type, expr);
      expr = FUNC29 (FUNC25 (POINTER_SIZE, 0), expr);
      /* Modes may be different but sizes should be the same.  There
	 is supposed to be some integral type that is the same width
	 as a pointer.  */
      FUNC33 (FUNC2 (FUNC11 (FUNC9 (expr)))
		  == FUNC2 (FUNC11 (type)));

      return FUNC28 (type, expr);
    }

  if (FUNC40 (expr))
    return FUNC35 (type, expr, tf_warning_or_error);

  FUNC31 ("cannot convert %qE from type %qT to type %qT",
	 expr, intype, type);
  return error_mark_node;
}