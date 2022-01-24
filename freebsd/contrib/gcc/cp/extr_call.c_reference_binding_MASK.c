#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ tree ;
typedef  int cp_lvalue_kind ;
struct TYPE_13__ {TYPE_1__* next; } ;
struct TYPE_14__ {int need_temporary_p; TYPE_2__ u; } ;
typedef  TYPE_3__ conversion ;
struct TYPE_12__ {int check_copy_constructor_p; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ FUNCTION_TYPE ; 
 int LOOKUP_CONSTRUCTOR_CALLABLE ; 
 int LOOKUP_NO_CONVERSION ; 
 int LOOKUP_NO_TEMP_BIND ; 
 scalar_t__ REFERENCE_TYPE ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,scalar_t__) ; 
 TYPE_3__* FUNC6 (int /*<<< orphan*/ ,scalar_t__,TYPE_3__*) ; 
 TYPE_3__* FUNC7 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC8 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ck_ref_bind ; 
 int clk_bitfield ; 
 int clk_none ; 
 int clk_ordinary ; 
 int clk_packed ; 
 TYPE_3__* FUNC9 (scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__) ; 
 TYPE_3__* FUNC11 (scalar_t__,TYPE_3__*) ; 
 scalar_t__ error_mark_node ; 
 TYPE_3__* FUNC12 (scalar_t__,scalar_t__,scalar_t__,int,int) ; 
 scalar_t__ FUNC13 (scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC14 (scalar_t__) ; 
 int FUNC15 (scalar_t__,scalar_t__) ; 
 int FUNC16 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  tf_none ; 
 scalar_t__ FUNC17 (scalar_t__) ; 

__attribute__((used)) static conversion *
FUNC18 (tree rto, tree rfrom, tree expr, bool c_cast_p, int flags)
{
  conversion *conv = NULL;
  tree to = FUNC3 (rto);
  tree from = rfrom;
  bool related_p;
  bool compatible_p;
  cp_lvalue_kind lvalue_p = clk_none;

  if (FUNC2 (to) == FUNCTION_TYPE && expr && FUNC17 (expr))
    {
      expr = FUNC13 (to, expr, tf_none);
      if (expr == error_mark_node)
	return NULL;
      from = FUNC3 (expr);
    }

  if (FUNC2 (from) == REFERENCE_TYPE)
    {
      /* Anything with reference type is an lvalue.  */
      lvalue_p = clk_ordinary;
      from = FUNC3 (from);
    }
  else if (expr)
    lvalue_p = FUNC14 (expr);

  /* Figure out whether or not the types are reference-related and
     reference compatible.  We have do do this after stripping
     references from FROM.  */
  related_p = FUNC16 (to, from);
  /* If this is a C cast, first convert to an appropriately qualified
     type, so that we can later do a const_cast to the desired type.  */
  if (related_p && c_cast_p
      && !FUNC5 (to, from))
    to = FUNC8 (to, FUNC10 (from));
  compatible_p = FUNC15 (to, from);

  if (lvalue_p && compatible_p)
    {
      /* [dcl.init.ref]

	 If the initializer expression

	 -- is an lvalue (but not an lvalue for a bit-field), and "cv1 T1"
	    is reference-compatible with "cv2 T2,"

	 the reference is bound directly to the initializer expression
	 lvalue.  */
      conv = FUNC7 (from, expr);
      conv = FUNC11 (rto, conv);
      if ((lvalue_p & clk_bitfield) != 0
	  || ((lvalue_p & clk_packed) != 0 && !FUNC4 (to)))
	/* For the purposes of overload resolution, we ignore the fact
	   this expression is a bitfield or packed field. (In particular,
	   [over.ics.ref] says specifically that a function with a
	   non-const reference parameter is viable even if the
	   argument is a bitfield.)

	   However, when we actually call the function we must create
	   a temporary to which to bind the reference.  If the
	   reference is volatile, or isn't const, then we cannot make
	   a temporary, so we just issue an error when the conversion
	   actually occurs.  */
	conv->need_temporary_p = true;

      return conv;
    }
  else if (FUNC0 (from) && !(flags & LOOKUP_NO_CONVERSION))
    {
      /* [dcl.init.ref]

	 If the initializer expression

	 -- has a class type (i.e., T2 is a class type) can be
	    implicitly converted to an lvalue of type "cv3 T3," where
	    "cv1 T1" is reference-compatible with "cv3 T3".  (this
	    conversion is selected by enumerating the applicable
	    conversion functions (_over.match.ref_) and choosing the
	    best one through overload resolution.  (_over.match_).

	the reference is bound to the lvalue result of the conversion
	in the second case.  */
      conv = FUNC9 (to, from, expr);
      if (conv)
	return conv;
    }

  /* From this point on, we conceptually need temporaries, even if we
     elide them.  Only the cases above are "direct bindings".  */
  if (flags & LOOKUP_NO_TEMP_BIND)
    return NULL;

  /* [over.ics.rank]

     When a parameter of reference type is not bound directly to an
     argument expression, the conversion sequence is the one required
     to convert the argument expression to the underlying type of the
     reference according to _over.best.ics_.  Conceptually, this
     conversion sequence corresponds to copy-initializing a temporary
     of the underlying type with the argument expression.  Any
     difference in top-level cv-qualification is subsumed by the
     initialization itself and does not constitute a conversion.  */

  /* [dcl.init.ref]

     Otherwise, the reference shall be to a non-volatile const type.  */
  if (!FUNC1 (to))
    return NULL;

  /* [dcl.init.ref]

     If the initializer expression is an rvalue, with T2 a class type,
     and "cv1 T1" is reference-compatible with "cv2 T2", the reference
     is bound in one of the following ways:

     -- The reference is bound to the object represented by the rvalue
	or to a sub-object within that object.

     -- ...

     We use the first alternative.  The implicit conversion sequence
     is supposed to be same as we would obtain by generating a
     temporary.  Fortunately, if the types are reference compatible,
     then this is either an identity conversion or the derived-to-base
     conversion, just as for direct binding.  */
  if (FUNC0 (from) && compatible_p)
    {
      conv = FUNC7 (from, expr);
      conv = FUNC11 (rto, conv);
      if (!(flags & LOOKUP_CONSTRUCTOR_CALLABLE))
	conv->u.next->check_copy_constructor_p = true;
      return conv;
    }

  /* [dcl.init.ref]

     Otherwise, a temporary of type "cv1 T1" is created and
     initialized from the initializer expression using the rules for a
     non-reference copy initialization.  If T1 is reference-related to
     T2, cv1 must be the same cv-qualification as, or greater
     cv-qualification than, cv2; otherwise, the program is ill-formed.  */
  if (related_p && !FUNC5 (to, from))
    return NULL;

  conv = FUNC12 (to, from, expr, c_cast_p,
			      flags);
  if (!conv)
    return NULL;

  conv = FUNC6 (ck_ref_bind, rto, conv);
  /* This reference binding, unlike those above, requires the
     creation of a temporary.  */
  conv->need_temporary_p = true;

  return conv;
}