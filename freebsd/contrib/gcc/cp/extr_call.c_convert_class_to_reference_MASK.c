#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ tree ;
struct z_candidate {int viable; TYPE_2__* second_conv; scalar_t__ fn; scalar_t__ args; TYPE_1__** convs; struct z_candidate* next; } ;
struct TYPE_13__ {int bad_p; struct z_candidate* cand; } ;
typedef  TYPE_2__ conversion ;
struct TYPE_12__ {int bad_p; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEDUCE_CONV ; 
 int /*<<< orphan*/  LOOKUP_NORMAL ; 
 scalar_t__ NULL_TREE ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ REFERENCE_TYPE ; 
 scalar_t__ TEMPLATE_DECL ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 struct z_candidate* FUNC8 (struct z_candidate**,scalar_t__,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct z_candidate* FUNC9 (struct z_candidate**,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC10 (int /*<<< orphan*/ ,scalar_t__,TYPE_2__*) ; 
 TYPE_2__* FUNC11 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__) ; 
 scalar_t__ FUNC14 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC15 (scalar_t__) ; 
 scalar_t__ FUNC16 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  ck_user ; 
 TYPE_2__* FUNC17 (scalar_t__,TYPE_2__*) ; 
 scalar_t__ FUNC18 (scalar_t__) ; 
 TYPE_2__* FUNC19 (TYPE_2__*,TYPE_2__*) ; 
 int /*<<< orphan*/  pedantic ; 
 scalar_t__ FUNC20 (scalar_t__,scalar_t__) ; 
 struct z_candidate* FUNC21 (struct z_candidate*,int /*<<< orphan*/ ,int*) ; 
 struct z_candidate* FUNC22 (struct z_candidate*) ; 
 scalar_t__ FUNC23 (scalar_t__,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static conversion *
FUNC24 (tree t, tree s, tree expr)
{
  tree conversions;
  tree arglist;
  conversion *conv;
  tree reference_type;
  struct z_candidate *candidates;
  struct z_candidate *cand;
  bool any_viable_p;

  conversions = FUNC18 (s);
  if (!conversions)
    return NULL;

  /* [over.match.ref]

     Assuming that "cv1 T" is the underlying type of the reference
     being initialized, and "cv S" is the type of the initializer
     expression, with S a class type, the candidate functions are
     selected as follows:

     --The conversion functions of S and its base classes are
       considered.  Those that are not hidden within S and yield type
       "reference to cv2 T2", where "cv1 T" is reference-compatible
       (_dcl.init.ref_) with "cv2 T2", are candidate functions.

     The argument list has one argument, which is the initializer
     expression.  */

  candidates = 0;

  /* Conceptually, we should take the address of EXPR and put it in
     the argument list.  Unfortunately, however, that can result in
     error messages, which we should not issue now because we are just
     trying to find a conversion operator.  Therefore, we use NULL,
     cast to the appropriate type.  */
  arglist = FUNC12 (FUNC13 (s), 0);
  arglist = FUNC16 (NULL_TREE, arglist);

  reference_type = FUNC14 (t);

  while (conversions)
    {
      tree fns = FUNC6 (conversions);

      for (; fns; fns = FUNC1 (fns))
	{
	  tree f = FUNC0 (fns);
	  tree t2 = FUNC5 (FUNC5 (f));

	  cand = NULL;

	  /* If this is a template function, try to get an exact
	     match.  */
	  if (FUNC3 (f) == TEMPLATE_DECL)
	    {
	      cand = FUNC9 (&candidates,
					     f, s,
					     NULL_TREE,
					     arglist,
					     reference_type,
					     FUNC7 (s),
					     FUNC4 (conversions),
					     LOOKUP_NORMAL,
					     DEDUCE_CONV);

	      if (cand)
		{
		  /* Now, see if the conversion function really returns
		     an lvalue of the appropriate type.  From the
		     point of view of unification, simply returning an
		     rvalue of the right type is good enough.  */
		  f = cand->fn;
		  t2 = FUNC5 (FUNC5 (f));
		  if (FUNC3 (t2) != REFERENCE_TYPE
		      || !FUNC20 (t, FUNC5 (t2)))
		    {
		      candidates = candidates->next;
		      cand = NULL;
		    }
		}
	    }
	  else if (FUNC3 (t2) == REFERENCE_TYPE
		   && FUNC20 (t, FUNC5 (t2)))
	    cand = FUNC8 (&candidates, f, s, arglist,
					   FUNC7 (s),
					   FUNC4 (conversions),
					   LOOKUP_NORMAL);

	  if (cand)
	    {
	      conversion *identity_conv;
	      /* Build a standard conversion sequence indicating the
		 binding from the reference type returned by the
		 function to the desired REFERENCE_TYPE.  */
	      identity_conv
		= FUNC11 (FUNC5 (FUNC5
						  (FUNC5 (cand->fn))),
				       NULL_TREE);
	      cand->second_conv
		= (FUNC17
		   (reference_type, identity_conv));
	      cand->second_conv->bad_p |= cand->convs[0]->bad_p;
	    }
	}
      conversions = FUNC2 (conversions);
    }

  candidates = FUNC21 (candidates, pedantic, &any_viable_p);
  /* If none of the conversion functions worked out, let our caller
     know.  */
  if (!any_viable_p)
    return NULL;

  cand = FUNC22 (candidates);
  if (!cand)
    return NULL;

  /* Now that we know that this is the function we're going to use fix
     the dummy first argument.  */
  cand->args = FUNC23 (NULL_TREE,
			  FUNC15 (expr),
			  FUNC2 (cand->args));

  /* Build a user-defined conversion sequence representing the
     conversion.  */
  conv = FUNC10 (ck_user,
		     FUNC5 (FUNC5 (cand->fn)),
		     FUNC11 (FUNC5 (expr), expr));
  conv->cand = cand;

  /* Merge it with the standard conversion sequence from the
     conversion function's return type to the desired type.  */
  cand->second_conv = FUNC19 (conv, cand->second_conv);

  if (cand->viable == -1)
    conv->bad_p = true;

  return cand->second_conv;
}