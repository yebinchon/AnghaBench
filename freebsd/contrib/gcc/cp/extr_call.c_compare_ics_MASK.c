#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ tree ;
typedef  scalar_t__ conversion_rank ;
struct TYPE_12__ {TYPE_3__* next; } ;
struct TYPE_13__ {scalar_t__ user_conv_p; scalar_t__ rank; scalar_t__ kind; scalar_t__ type; TYPE_2__ u; TYPE_1__* cand; scalar_t__ ellipsis_p; } ;
typedef  TYPE_3__ conversion ;
struct TYPE_11__ {scalar_t__ fn; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (TYPE_3__*) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ NULL_TREE ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 scalar_t__ FUNC8 (scalar_t__) ; 
 scalar_t__ VOID_TYPE ; 
 scalar_t__ ck_ambig ; 
 scalar_t__ ck_identity ; 
 scalar_t__ ck_qual ; 
 scalar_t__ ck_user ; 
 int FUNC9 (scalar_t__,scalar_t__) ; 
 int FUNC10 (scalar_t__,scalar_t__) ; 
 scalar_t__ cr_bad ; 
 scalar_t__ FUNC11 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC12 (TYPE_3__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_3__**) ; 
 scalar_t__ FUNC14 (TYPE_3__**) ; 
 scalar_t__ FUNC15 (scalar_t__) ; 
 scalar_t__ FUNC16 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC17 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static int
FUNC18 (conversion *ics1, conversion *ics2)
{
  tree from_type1;
  tree from_type2;
  tree to_type1;
  tree to_type2;
  tree deref_from_type1 = NULL_TREE;
  tree deref_from_type2 = NULL_TREE;
  tree deref_to_type1 = NULL_TREE;
  tree deref_to_type2 = NULL_TREE;
  conversion_rank rank1, rank2;

  /* REF_BINDING is nonzero if the result of the conversion sequence
     is a reference type.   In that case TARGET_TYPE is the
     type referred to by the reference.  */
  tree target_type1;
  tree target_type2;

  /* Handle implicit object parameters.  */
  FUNC13 (&ics1);
  FUNC13 (&ics2);

  /* Handle reference parameters.  */
  target_type1 = FUNC14 (&ics1);
  target_type2 = FUNC14 (&ics2);

  /* [over.ics.rank]

     When  comparing  the  basic forms of implicit conversion sequences (as
     defined in _over.best.ics_)

     --a standard conversion sequence (_over.ics.scs_) is a better
       conversion sequence than a user-defined conversion sequence
       or an ellipsis conversion sequence, and

     --a user-defined conversion sequence (_over.ics.user_) is a
       better conversion sequence than an ellipsis conversion sequence
       (_over.ics.ellipsis_).  */
  rank1 = FUNC1 (ics1);
  rank2 = FUNC1 (ics2);

  if (rank1 > rank2)
    return -1;
  else if (rank1 < rank2)
    return 1;

  if (rank1 == cr_bad)
    {
      /* XXX Isn't this an extension? */
      /* Both ICS are bad.  We try to make a decision based on what
	 would have happened if they'd been good.  */
      if (ics1->user_conv_p > ics2->user_conv_p
	  || ics1->rank  > ics2->rank)
	return -1;
      else if (ics1->user_conv_p < ics2->user_conv_p
	       || ics1->rank < ics2->rank)
	return 1;

      /* We couldn't make up our minds; try to figure it out below.  */
    }

  if (ics1->ellipsis_p)
    /* Both conversions are ellipsis conversions.  */
    return 0;

  /* User-defined  conversion sequence U1 is a better conversion sequence
     than another user-defined conversion sequence U2 if they contain the
     same user-defined conversion operator or constructor and if the sec-
     ond standard conversion sequence of U1 is  better  than  the  second
     standard conversion sequence of U2.  */

  if (ics1->user_conv_p)
    {
      conversion *t1;
      conversion *t2;

      for (t1 = ics1; t1->kind != ck_user; t1 = t1->u.next)
	if (t1->kind == ck_ambig)
	  return 0;
      for (t2 = ics2; t2->kind != ck_user; t2 = t2->u.next)
	if (t2->kind == ck_ambig)
	  return 0;

      if (t1->cand->fn != t2->cand->fn)
	return 0;

      /* We can just fall through here, after setting up
	 FROM_TYPE1 and FROM_TYPE2.  */
      from_type1 = t1->type;
      from_type2 = t2->type;
    }
  else
    {
      conversion *t1;
      conversion *t2;

      /* We're dealing with two standard conversion sequences.

	 [over.ics.rank]

	 Standard conversion sequence S1 is a better conversion
	 sequence than standard conversion sequence S2 if

	 --S1 is a proper subsequence of S2 (comparing the conversion
	   sequences in the canonical form defined by _over.ics.scs_,
	   excluding any Lvalue Transformation; the identity
	   conversion sequence is considered to be a subsequence of
	   any non-identity conversion sequence */

      t1 = ics1;
      while (t1->kind != ck_identity)
	t1 = t1->u.next;
      from_type1 = t1->type;

      t2 = ics2;
      while (t2->kind != ck_identity)
	t2 = t2->u.next;
      from_type2 = t2->type;
    }

  if (FUNC17 (from_type1, from_type2))
    {
      if (FUNC12 (ics1, ics2))
	return 1;
      if (FUNC12 (ics2, ics1))
	return -1;
    }
  /* Otherwise, one sequence cannot be a subsequence of the other; they
     don't start with the same type.  This can happen when comparing the
     second standard conversion sequence in two user-defined conversion
     sequences.  */

  /* [over.ics.rank]

     Or, if not that,

     --the rank of S1 is better than the rank of S2 (by the rules
       defined below):

    Standard conversion sequences are ordered by their ranks: an Exact
    Match is a better conversion than a Promotion, which is a better
    conversion than a Conversion.

    Two conversion sequences with the same rank are indistinguishable
    unless one of the following rules applies:

    --A conversion that is not a conversion of a pointer, or pointer
      to member, to bool is better than another conversion that is such
      a conversion.

    The ICS_STD_RANK automatically handles the pointer-to-bool rule,
    so that we do not have to check it explicitly.  */
  if (ics1->rank < ics2->rank)
    return 1;
  else if (ics2->rank < ics1->rank)
    return -1;

  to_type1 = ics1->type;
  to_type2 = ics2->type;

  if (FUNC8 (from_type1)
      && FUNC8 (from_type2)
      && FUNC8 (to_type1)
      && FUNC8 (to_type2))
    {
      deref_from_type1 = FUNC4 (from_type1);
      deref_from_type2 = FUNC4 (from_type2);
      deref_to_type1 = FUNC4 (to_type1);
      deref_to_type2 = FUNC4 (to_type2);
    }
  /* The rules for pointers to members A::* are just like the rules
     for pointers A*, except opposite: if B is derived from A then
     A::* converts to B::*, not vice versa.  For that reason, we
     switch the from_ and to_ variables here.  */
  else if ((FUNC7 (from_type1) && FUNC7 (from_type2)
	    && FUNC7 (to_type1) && FUNC7 (to_type2))
	   || (FUNC5 (from_type1)
	       && FUNC5 (from_type2)
	       && FUNC5 (to_type1)
	       && FUNC5 (to_type2)))
    {
      deref_to_type1 = FUNC6 (from_type1);
      deref_to_type2 = FUNC6 (from_type2);
      deref_from_type1 = FUNC6 (to_type1);
      deref_from_type2 = FUNC6 (to_type2);
    }

  if (deref_from_type1 != NULL_TREE
      && FUNC2 (FUNC3 (deref_from_type1))
      && FUNC2 (FUNC3 (deref_from_type2)))
    {
      /* This was one of the pointer or pointer-like conversions.

	 [over.ics.rank]

	 --If class B is derived directly or indirectly from class A,
	   conversion of B* to A* is better than conversion of B* to
	   void*, and conversion of A* to void* is better than
	   conversion of B* to void*.  */
      if (FUNC3 (deref_to_type1) == VOID_TYPE
	  && FUNC3 (deref_to_type2) == VOID_TYPE)
	{
	  if (FUNC11 (deref_from_type1,
					deref_from_type2))
	    return -1;
	  else if (FUNC11 (deref_from_type2,
					     deref_from_type1))
	    return 1;
	}
      else if (FUNC3 (deref_to_type1) == VOID_TYPE
	       || FUNC3 (deref_to_type2) == VOID_TYPE)
	{
	  if (FUNC17 (deref_from_type1, deref_from_type2))
	    {
	      if (FUNC3 (deref_to_type2) == VOID_TYPE)
		{
		  if (FUNC11 (deref_from_type1,
						deref_to_type1))
		    return 1;
		}
	      /* We know that DEREF_TO_TYPE1 is `void' here.  */
	      else if (FUNC11 (deref_from_type1,
						 deref_to_type2))
		return -1;
	    }
	}
      else if (FUNC2 (FUNC3 (deref_to_type1))
	       && FUNC2 (FUNC3 (deref_to_type2)))
	{
	  /* [over.ics.rank]

	     --If class B is derived directly or indirectly from class A
	       and class C is derived directly or indirectly from B,

	     --conversion of C* to B* is better than conversion of C* to
	       A*,

	     --conversion of B* to A* is better than conversion of C* to
	       A*  */
	  if (FUNC17 (deref_from_type1, deref_from_type2))
	    {
	      if (FUNC11 (deref_to_type1,
					    deref_to_type2))
		return 1;
	      else if (FUNC11 (deref_to_type2,
						 deref_to_type1))
		return -1;
	    }
	  else if (FUNC17 (deref_to_type1, deref_to_type2))
	    {
	      if (FUNC11 (deref_from_type2,
					    deref_from_type1))
		return 1;
	      else if (FUNC11 (deref_from_type1,
						 deref_from_type2))
		return -1;
	    }
	}
    }
  else if (FUNC0 (FUNC15 (from_type1))
	   && FUNC17 (from_type1, from_type2))
    {
      tree from = FUNC15 (from_type1);

      /* [over.ics.rank]

	 --binding of an expression of type C to a reference of type
	   B& is better than binding an expression of type C to a
	   reference of type A&

	 --conversion of C to B is better than conversion of C to A,  */
      if (FUNC11 (from, to_type1)
	  && FUNC11 (from, to_type2))
	{
	  if (FUNC11 (to_type1, to_type2))
	    return 1;
	  else if (FUNC11 (to_type2, to_type1))
	    return -1;
	}
    }
  else if (FUNC0 (FUNC15 (to_type1))
	   && FUNC17 (to_type1, to_type2))
    {
      tree to = FUNC15 (to_type1);

      /* [over.ics.rank]

	 --binding of an expression of type B to a reference of type
	   A& is better than binding an expression of type C to a
	   reference of type A&,

	 --conversion of B to A is better than conversion of C to A  */
      if (FUNC11 (from_type1, to)
	  && FUNC11 (from_type2, to))
	{
	  if (FUNC11 (from_type2, from_type1))
	    return 1;
	  else if (FUNC11 (from_type1, from_type2))
	    return -1;
	}
    }

  /* [over.ics.rank]

     --S1 and S2 differ only in their qualification conversion and  yield
       similar  types  T1 and T2 (_conv.qual_), respectively, and the cv-
       qualification signature of type T1 is a proper subset of  the  cv-
       qualification signature of type T2  */
  if (ics1->kind == ck_qual
      && ics2->kind == ck_qual
      && FUNC17 (from_type1, from_type2))
    return FUNC9 (to_type1, to_type2);

  /* [over.ics.rank]

     --S1 and S2 are reference bindings (_dcl.init.ref_), and the
     types to which the references refer are the same type except for
     top-level cv-qualifiers, and the type to which the reference
     initialized by S2 refers is more cv-qualified than the type to
     which the reference initialized by S1 refers */

  if (target_type1 && target_type2
      && FUNC16 (to_type1, to_type2))
    return FUNC10 (target_type2, target_type1);

  /* Neither conversion sequence is better than the other.  */
  return 0;
}