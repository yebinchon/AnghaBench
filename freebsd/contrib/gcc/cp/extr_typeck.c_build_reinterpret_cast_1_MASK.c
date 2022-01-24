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

/* Variables and functions */
 int /*<<< orphan*/  ADDR_EXPR ; 
 scalar_t__ BLOCK_POINTER_TYPE ; 
 int COMPARE_BASE ; 
 int COMPARE_DERIVED ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNCTION_TYPE ; 
 scalar_t__ INTEGER_TYPE ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ METHOD_TYPE ; 
 scalar_t__ NOP_EXPR ; 
 int /*<<< orphan*/  POINTER_SIZE ; 
 scalar_t__ POINTER_TYPE ; 
 scalar_t__ REFERENCE_TYPE ; 
 scalar_t__ STRICT_ALIGNMENT ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 scalar_t__ FUNC8 (scalar_t__) ; 
 scalar_t__ FUNC9 (scalar_t__) ; 
 scalar_t__ FUNC10 (scalar_t__) ; 
 scalar_t__ FUNC11 (scalar_t__) ; 
 scalar_t__ FUNC12 (scalar_t__) ; 
 scalar_t__ FUNC13 (scalar_t__) ; 
 scalar_t__ FUNC14 (scalar_t__) ; 
 scalar_t__ FUNC15 (scalar_t__) ; 
 scalar_t__ VECTOR_TYPE ; 
 scalar_t__ FUNC16 (scalar_t__) ; 
 scalar_t__ FUNC17 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC19 (scalar_t__) ; 
 scalar_t__ FUNC20 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC21 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC22 (scalar_t__,scalar_t__,int /*<<< orphan*/  (*) (char*,scalar_t__,scalar_t__),char*) ; 
 scalar_t__ FUNC23 (scalar_t__,scalar_t__,int) ; 
 scalar_t__ FUNC24 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC25 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC26 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC27 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC28 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC29 (char*,scalar_t__,scalar_t__) ; 
 scalar_t__ error_mark_node ; 
 scalar_t__ FUNC30 (scalar_t__) ; 
 scalar_t__ FUNC31 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC32 (scalar_t__) ; 
 scalar_t__ pedantic ; 
 int /*<<< orphan*/  FUNC33 (char*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC34 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC35 (scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC36 (scalar_t__) ; 
 scalar_t__ warn_cast_align ; 
 int warn_strict_aliasing ; 
 int /*<<< orphan*/  FUNC37 (int /*<<< orphan*/ ,char*,...) ; 

__attribute__((used)) static tree
FUNC38 (tree type, tree expr, bool c_cast_p,
			  bool *valid_p)
{
  tree intype;

  /* Assume the cast is invalid.  */
  if (valid_p)
    *valid_p = true;

  if (type == error_mark_node || FUNC30 (expr))
    return error_mark_node;

  intype = FUNC7 (expr);

  /* Save casted types in the function's used types hash table.  */
  FUNC36 (type);

  /* [expr.reinterpret.cast]
     An lvalue expression of type T1 can be cast to the type
     "reference to T2" if an expression of type "pointer to T1" can be
     explicitly converted to the type "pointer to T2" using a
     reinterpret_cast.  */
  if (FUNC5 (type) == REFERENCE_TYPE)
    {
      if (! FUNC34 (expr))
	{
	  FUNC29 ("invalid cast of an rvalue expression of type "
		 "%qT to type %qT",
		 intype, type);
	  return error_mark_node;
	}

      /* Warn about a reinterpret_cast from "A*" to "B&" if "A" and
	 "B" are related class types; the reinterpret_cast does not
	 adjust the pointer.  */
      if (FUNC14 (intype)
	  && (FUNC23 (FUNC7 (intype), FUNC7 (type),
			 COMPARE_BASE | COMPARE_DERIVED)))
	FUNC37 (0, "casting %qT to %qT does not dereference pointer",
		 intype, type);

      expr = FUNC20 (ADDR_EXPR, expr, 0);
      if (expr != error_mark_node)
	expr = FUNC38
	  (FUNC19 (FUNC7 (type)), expr, c_cast_p,
	   valid_p);
      if (expr != error_mark_node)
	expr = FUNC17 (expr, 0);
      return expr;
    }

  /* As a G++ extension, we consider conversions from member
     functions, and pointers to member functions to
     pointer-to-function and pointer-to-void types.  If
     -Wno-pmf-conversions has not been specified,
     convert_member_func_to_ptr will issue an error message.  */
  if ((FUNC11 (intype)
       || FUNC5 (intype) == METHOD_TYPE)
      && FUNC14 (type)
      && (FUNC5 (FUNC7 (type)) == FUNCTION_TYPE
	  || FUNC16 (FUNC7 (type))))
    return FUNC24 (type, expr);

  /* If the cast is not to a reference type, the lvalue-to-rvalue,
     array-to-pointer, and function-to-pointer conversions are
     performed.  */
  expr = FUNC28 (expr);

  /* build_c_cast puts on a NOP_EXPR to make the result not an lvalue.
     Strip such NOP_EXPRs if VALUE is being used in non-lvalue context.  */
  if (FUNC5 (expr) == NOP_EXPR
      && FUNC7 (expr) == FUNC7 (FUNC6 (expr, 0)))
    expr = FUNC6 (expr, 0);

  if (FUNC30 (expr))
    return error_mark_node;

  intype = FUNC7 (expr);

  /* [expr.reinterpret.cast]
     A pointer can be converted to any integral type large enough to
     hold it.  */
  if (FUNC1 (type) && FUNC14 (intype))
    {
      if (FUNC9 (type) < FUNC9 (intype))
	FUNC33 ("cast from %qT to %qT loses precision",
		 intype, type);
    }
  /* [expr.reinterpret.cast]
     A value of integral or enumeration type can be explicitly
     converted to a pointer.  */
  else if (FUNC14 (type) && FUNC2 (intype))
    /* OK */
    ;
  /* APPLE LOCAL begin blocks 6040305 (ck) */
  else if (FUNC5 (type) == INTEGER_TYPE && FUNC5 (intype) == BLOCK_POINTER_TYPE)
    {
      if (FUNC9 (type) < FUNC9 (intype))
	FUNC33 ("cast from %qT to %qT loses precision",
		 intype, type);
    }
  else if (FUNC5 (type) == BLOCK_POINTER_TYPE && FUNC5 (intype) == INTEGER_TYPE)
    /* OK */
    ;
  else if (FUNC5 (type) == BLOCK_POINTER_TYPE && FUNC5 (intype) == BLOCK_POINTER_TYPE)
    /* OK */
    ;
  else if (FUNC5 (intype) == BLOCK_POINTER_TYPE
	   && (FUNC32 (type)
	       || (FUNC5 (type) == POINTER_TYPE && FUNC16 (FUNC7 (type)))))
    /* OK */
    ;
  else if (FUNC5 (type) == BLOCK_POINTER_TYPE
	   && FUNC5 (intype) == POINTER_TYPE
	   && (FUNC32 (intype) || FUNC16 (FUNC7 (intype))))
    /* OK */
    ;
  /* APPLE LOCAL end blocks 6040305 (ck) */
  else if ((FUNC10 (type) && FUNC10 (intype))
	   || (FUNC11 (type) && FUNC11 (intype)))
    return FUNC31 (FUNC18 (type, expr));
  else if ((FUNC12 (type) && FUNC12 (intype))
	   || (FUNC13 (type) && FUNC13 (intype)))
    {
      tree sexpr = expr;

      if (!c_cast_p)
	FUNC22 (intype, type, error,
					  "reinterpret_cast");
      /* Warn about possible alignment problems.  */
      if (STRICT_ALIGNMENT && warn_cast_align
	  && !FUNC16 (type)
	  && FUNC5 (FUNC7 (intype)) != FUNCTION_TYPE
	  && FUNC0 (FUNC7 (type))
	  && FUNC0 (FUNC7 (intype))
	  && FUNC8 (FUNC7 (type)) > FUNC8 (FUNC7 (intype)))
	FUNC37 (0, "cast from %qT to %qT increases required alignment of "
		 "target type",
		 intype, type);

      /* We need to strip nops here, because the frontend likes to
	 create (int *)&a for array-to-pointer decay, instead of &a[0].  */
      FUNC4 (sexpr);
      if (warn_strict_aliasing <= 2)
	FUNC35 (intype, type, sexpr);

      return FUNC31 (FUNC18 (type, expr));
    }
  else if ((FUNC10 (type) && FUNC13 (intype))
	   || (FUNC10 (intype) && FUNC13 (type)))
    {
      if (pedantic)
	/* Only issue a warning, as we have always supported this
	   where possible, and it is necessary in some cases.  DR 195
	   addresses this issue, but as of 2004/10/26 is still in
	   drafting.  */
	FUNC37 (0, "ISO C++ forbids casting between pointer-to-function and pointer-to-object");
      return FUNC31 (FUNC18 (type, expr));
    }
  else if (FUNC5 (type) == VECTOR_TYPE)
    return FUNC31 (FUNC26 (type, expr));
  else if (FUNC5 (intype) == VECTOR_TYPE && FUNC3 (type))
    return FUNC31 (FUNC25 (type, expr));
  else
    {
      if (valid_p)
	*valid_p = false;
      FUNC29 ("invalid cast from type %qT to type %qT", intype, type);
      return error_mark_node;
    }

  /* APPLE LOCAL begin don't sign-extend pointers cast to integers */
  if (FUNC5 (type) == INTEGER_TYPE
      && FUNC5 (intype) == POINTER_TYPE
      && FUNC9 (type) > FUNC9 (intype)
      && FUNC15 (type))
    expr = FUNC27 (FUNC21 (POINTER_SIZE, 1), expr);
  /* APPLE LOCAL end don't sign-extend pointers cast to integers */

  return FUNC27 (type, expr);
}