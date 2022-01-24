#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ tree ;
typedef  enum tree_code { ____Placeholder_tree_code } tree_code ;
struct TYPE_7__ {TYPE_2__* next; } ;
struct TYPE_8__ {scalar_t__ kind; scalar_t__ rank; int bad_p; int base_p; int need_temporary_p; TYPE_1__ u; } ;
typedef  TYPE_2__ conversion ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 int ARRAY_TYPE ; 
 int BLOCK_POINTER_TYPE ; 
 int BOOLEAN_TYPE ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int COMPLEX_TYPE ; 
 scalar_t__ FUNC2 (scalar_t__,scalar_t__) ; 
 int ENUMERAL_TYPE ; 
 int FUNCTION_TYPE ; 
 int INTEGER_TYPE ; 
 scalar_t__ FUNC3 (int) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 int LOOKUP_CONSTRUCTOR_CALLABLE ; 
 scalar_t__ NULL_TREE ; 
 int POINTER_TYPE ; 
 int REAL_TYPE ; 
 scalar_t__ REFERENCE_TYPE ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (scalar_t__) ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__) ; 
 scalar_t__ FUNC10 (scalar_t__) ; 
 scalar_t__ FUNC11 (scalar_t__) ; 
 scalar_t__ FUNC12 (scalar_t__) ; 
 scalar_t__ FUNC13 (scalar_t__) ; 
 scalar_t__ FUNC14 (scalar_t__) ; 
 scalar_t__ FUNC15 (scalar_t__) ; 
 scalar_t__ FUNC16 (scalar_t__) ; 
 int VECTOR_TYPE ; 
 scalar_t__ FUNC17 (scalar_t__) ; 
 TYPE_2__* FUNC18 (scalar_t__,scalar_t__,TYPE_2__*) ; 
 TYPE_2__* FUNC19 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC20 (scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC21 (scalar_t__) ; 
 scalar_t__ FUNC22 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC23 (scalar_t__) ; 
 scalar_t__ ck_base ; 
 scalar_t__ ck_lvalue ; 
 scalar_t__ ck_pmem ; 
 scalar_t__ ck_ptr ; 
 scalar_t__ ck_qual ; 
 scalar_t__ ck_rvalue ; 
 scalar_t__ ck_std ; 
 scalar_t__ FUNC24 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC25 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC27 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC28 (scalar_t__) ; 
 scalar_t__ cr_pbool ; 
 scalar_t__ cr_promotion ; 
 scalar_t__ error_mark_node ; 
 scalar_t__ FUNC29 (scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC30 (scalar_t__) ; 
 scalar_t__ FUNC31 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC32 (scalar_t__) ; 
 scalar_t__ FUNC33 (scalar_t__) ; 
 scalar_t__ FUNC34 (scalar_t__) ; 
 scalar_t__ FUNC35 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC36 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC37 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC38 (scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC39 (scalar_t__) ; 
 int /*<<< orphan*/  tf_conv ; 
 scalar_t__ FUNC40 (scalar_t__) ; 
 scalar_t__ FUNC41 (scalar_t__) ; 
 scalar_t__ FUNC42 (scalar_t__) ; 
 scalar_t__ FUNC43 (scalar_t__,scalar_t__,int) ; 
 scalar_t__ void_type_node ; 

__attribute__((used)) static conversion *
FUNC44 (tree to, tree from, tree expr, bool c_cast_p,
		     int flags)
{
  enum tree_code fcode, tcode;
  conversion *conv;
  bool fromref = false;

  to = FUNC33 (to);
  if (FUNC6 (from) == REFERENCE_TYPE)
    {
      fromref = true;
      from = FUNC7 (from);
    }
  to = FUNC39 (to);
  from = FUNC39 (from);

  if ((FUNC10 (to) || FUNC12 (to))
      && expr && FUNC42 (expr))
    {
      expr = FUNC29 (to, expr, tf_conv);
      if (expr == error_mark_node)
	return NULL;
      from = FUNC7 (expr);
    }

  fcode = FUNC6 (from);
  tcode = FUNC6 (to);

  conv = FUNC19 (from, expr);
  if (fcode == FUNCTION_TYPE || fcode == ARRAY_TYPE)
    {
      from = FUNC40 (from);
      fcode = FUNC6 (from);
      conv = FUNC18 (ck_lvalue, from, conv);
    }
  else if (fromref || (expr && FUNC32 (expr)))
    {
      if (expr)
	{
	  tree bitfield_type;
	  bitfield_type = FUNC30 (expr);
	  if (bitfield_type)
	    {
	      from = FUNC39 (bitfield_type);
	      fcode = FUNC6 (from);
	    }
	}
      conv = FUNC18 (ck_rvalue, from, conv);
    }

   /* Allow conversion between `__complex__' data types.  */
  if (tcode == COMPLEX_TYPE && fcode == COMPLEX_TYPE)
    {
      /* The standard conversion sequence to convert FROM to TO is
	 the standard conversion sequence to perform componentwise
	 conversion.  */
      conversion *part_conv = FUNC44
	(FUNC7 (to), FUNC7 (from), NULL_TREE, c_cast_p, flags);

      if (part_conv)
	{
	  conv = FUNC18 (part_conv->kind, to, conv);
	  conv->rank = part_conv->rank;
	}
      else
	conv = NULL;

      return conv;
    }

  if (FUNC37 (from, to))
    return conv;

  /* APPLE LOCAL blocks 6040305 (ck) */
  if ((tcode == POINTER_TYPE || tcode == BLOCK_POINTER_TYPE || FUNC16 (to))
      && expr && FUNC34 (expr))
    conv = FUNC18 (ck_std, to, conv);
  else if ((tcode == INTEGER_TYPE && fcode == POINTER_TYPE)
	   || (tcode == POINTER_TYPE && fcode == INTEGER_TYPE))
    {
      /* For backwards brain damage compatibility, allow interconversion of
	 pointers and integers with a pedwarn.  */
      conv = FUNC18 (ck_std, to, conv);
      conv->bad_p = true;
    }
  else if (tcode == ENUMERAL_TYPE && fcode == INTEGER_TYPE)
    {
      /* For backwards brain damage compatibility, allow interconversion of
	 enums and integers with a pedwarn.  */
      conv = FUNC18 (ck_std, to, conv);
      conv->bad_p = true;
    }
  else if ((tcode == POINTER_TYPE && fcode == POINTER_TYPE)
	   || (FUNC14 (to) && FUNC14 (from)))
    {
      tree to_pointee;
      tree from_pointee;

      if (tcode == POINTER_TYPE
	  && FUNC36 (FUNC7 (from),
							FUNC7 (to)))
	;
      else if (FUNC17 (FUNC7 (to))
	       && !FUNC14 (from)
	       && FUNC6 (FUNC7 (from)) != FUNCTION_TYPE)
	{
	  from = FUNC21
	    (FUNC27 (void_type_node,
				      FUNC28 (FUNC7 (from))));
	  conv = FUNC18 (ck_ptr, from, conv);
	}
      else if (FUNC14 (from))
	{
	  tree fbase = FUNC13 (from);
	  tree tbase = FUNC13 (to);

	  if (FUNC2 (fbase, tbase)
	      && (FUNC36
		  (FUNC15 (from),
		   FUNC15 (to))))
	    {
	      from = FUNC22 (tbase,
					FUNC15 (from));
	      conv = FUNC18 (ck_pmem, from, conv);
	    }
	  else if (!FUNC37 (fbase, tbase))
	    return NULL;
	}
      else if (FUNC4 (FUNC7 (from))
	       && FUNC4 (FUNC7 (to))
	       /* [conv.ptr]

		  An rvalue of type "pointer to cv D," where D is a
		  class type, can be converted to an rvalue of type
		  "pointer to cv B," where B is a base class (clause
		  _class.derived_) of D.  If B is an inaccessible
		  (clause _class.access_) or ambiguous
		  (_class.member.lookup_) base class of D, a program
		  that necessitates this conversion is ill-formed.
		  Therefore, we use DERIVED_FROM_P, and do not check
		  access or uniqueness.  */
	       && FUNC2 (FUNC7 (to), FUNC7 (from))
	       /* If FROM is not yet complete, then we must be parsing
		  the body of a class.  We know what's derived from
		  what, but we can't actually perform a
		  derived-to-base conversion.  For example, in:

		     struct D : public B { 
                       static const int i = sizeof((B*)(D*)0);
                     };

                  the D*-to-B* conversion is a reinterpret_cast, not a
		  static_cast.  */
	       && FUNC1 (FUNC7 (from)))
	{
	  from =
	    FUNC27 (FUNC7 (to),
				     FUNC28 (FUNC7 (from)));
	  from = FUNC21 (from);
	  conv = FUNC18 (ck_ptr, from, conv);
	  conv->base_p = true;
	}

      if (tcode == POINTER_TYPE)
	{
	  to_pointee = FUNC7 (to);
	  from_pointee = FUNC7 (from);
	}
      else
	{
	  to_pointee = FUNC15 (to);
	  from_pointee = FUNC15 (from);
	}

      if (FUNC37 (from, to))
	/* OK */;
      else if (c_cast_p && FUNC25 (to, from))
	/* In a C-style cast, we ignore CV-qualification because we
	   are allowed to perform a static_cast followed by a
	   const_cast.  */
	conv = FUNC18 (ck_qual, to, conv);
      else if (!c_cast_p && FUNC24 (to_pointee, from_pointee))
	conv = FUNC18 (ck_qual, to, conv);
      else if (expr && FUNC38 (to, expr, 0))
	/* converting from string constant to char *.  */
	conv = FUNC18 (ck_qual, to, conv);
      else if (FUNC35 (to_pointee, from_pointee))
	{
	  conv = FUNC18 (ck_ptr, to, conv);
	  conv->bad_p = true;
	}
      else
	return NULL;

      from = to;
    }
  else if (FUNC12 (to) && FUNC12 (from))
    {
      tree fromfn = FUNC7 (FUNC11 (from));
      tree tofn = FUNC7 (FUNC11 (to));
      tree fbase = FUNC7 (FUNC8 (FUNC9 (fromfn)));
      tree tbase = FUNC7 (FUNC8 (FUNC9 (tofn)));

      if (!FUNC2 (fbase, tbase)
	  || !FUNC37 (FUNC7 (fromfn), FUNC7 (tofn))
	  || !FUNC26 (FUNC5 (FUNC9 (fromfn)),
			 FUNC5 (FUNC9 (tofn)))
	  || FUNC28 (fbase) != FUNC28 (tbase))
	return NULL;

      from = FUNC27 (tbase, FUNC28 (fbase));
      from = FUNC20 (from,
					 FUNC7 (fromfn),
					 FUNC5 (FUNC9 (fromfn)));
      from = FUNC23 (FUNC21 (from));
      conv = FUNC18 (ck_pmem, from, conv);
      conv->base_p = true;
    }
  else if (tcode == BOOLEAN_TYPE)
    {
      /* [conv.bool]

	  An rvalue of arithmetic, enumeration, pointer, or pointer to
	  member type can be converted to an rvalue of type bool.  */
      if (FUNC0 (from)
	  || fcode == ENUMERAL_TYPE
	  || fcode == POINTER_TYPE
	  /* APPLE LOCAL blocks 6040305 (cl) */
	  || fcode == BLOCK_POINTER_TYPE
	  || FUNC16 (from))
	{
	  conv = FUNC18 (ck_std, to, conv);
	  if (fcode == POINTER_TYPE
	      || FUNC14 (from)
	      || (FUNC12 (from)
		  && conv->rank < cr_pbool))
	    conv->rank = cr_pbool;
	  return conv;
	}

      return NULL;
    }
  /* We don't check for ENUMERAL_TYPE here because there are no standard
     conversions to enum type.  */
  else if (tcode == INTEGER_TYPE || tcode == BOOLEAN_TYPE
	   || tcode == REAL_TYPE)
    {
      if (! (FUNC3 (fcode) || fcode == REAL_TYPE))
	return NULL;
      conv = FUNC18 (ck_std, to, conv);

      /* Give this a better rank if it's a promotion.  */
      if (FUNC37 (to, FUNC41 (from))
	  && conv->u.next->rank <= cr_promotion)
	conv->rank = cr_promotion;
    }
  else if (fcode == VECTOR_TYPE && tcode == VECTOR_TYPE
	   && FUNC43 (from, to, false))
    return FUNC18 (ck_std, to, conv);
  else if (!(flags & LOOKUP_CONSTRUCTOR_CALLABLE)
	   && FUNC4 (to) && FUNC4 (from)
	   && FUNC31 (from, to))
    {
      if (conv->kind == ck_rvalue)
	conv = conv->u.next;
      conv = FUNC18 (ck_base, to, conv);
      /* The derived-to-base conversion indicates the initialization
	 of a parameter with base type from an object of a derived
	 type.  A temporary object is created to hold the result of
	 the conversion.  */
      conv->need_temporary_p = true;
    }
  else
    return NULL;

  return conv;
}