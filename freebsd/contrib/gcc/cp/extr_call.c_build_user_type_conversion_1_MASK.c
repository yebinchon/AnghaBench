#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  char* tree ;
struct z_candidate {char* fn; int viable; TYPE_1__* second_conv; } ;
struct TYPE_10__ {int bad_p; int user_conv_p; struct z_candidate* cand; } ;
typedef  TYPE_1__ conversion ;

/* Variables and functions */
 char* FUNC0 (char*) ; 
 scalar_t__ FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ FUNC4 (char*) ; 
 int /*<<< orphan*/  DEDUCE_CALL ; 
 int /*<<< orphan*/  DEDUCE_CONV ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 
 scalar_t__ FUNC6 (char*) ; 
 int LOOKUP_COMPLAIN ; 
 int LOOKUP_NO_CONVERSION ; 
 int LOOKUP_NO_TEMP_BIND ; 
 char* NULL_TREE ; 
 char* FUNC7 (char*) ; 
 char* FUNC8 (char*) ; 
 scalar_t__ REFERENCE_TYPE ; 
 scalar_t__ TEMPLATE_DECL ; 
 char* FUNC9 (char*) ; 
 scalar_t__ FUNC10 (char*) ; 
 char* FUNC11 (char*) ; 
 char* FUNC12 (char*) ; 
 char* FUNC13 (char*) ; 
 char* FUNC14 (char*) ; 
 struct z_candidate* FUNC15 (struct z_candidate**,char*,char*,char*,char*,char*,int) ; 
 struct z_candidate* FUNC16 (struct z_candidate**,char*,char*,char*,char*,char*,char*,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct z_candidate*) ; 
 TYPE_1__* FUNC18 (char*,char*) ; 
 TYPE_1__* FUNC19 (int /*<<< orphan*/ ,char*,TYPE_1__*) ; 
 TYPE_1__* FUNC20 (char*,char*) ; 
 char* FUNC21 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (char*) ; 
 char* FUNC23 (char*) ; 
 char* FUNC24 (char*,char*) ; 
 int /*<<< orphan*/  ck_user ; 
 int /*<<< orphan*/  complete_ctor_identifier ; 
 int /*<<< orphan*/  FUNC25 (char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC26 (int) ; 
 TYPE_1__* FUNC27 (char*,char*,int /*<<< orphan*/ ,int,int) ; 
 char* FUNC28 (char*) ; 
 char* FUNC29 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC30 (TYPE_1__*,TYPE_1__*) ; 
 char* FUNC31 (char*) ; 
 int /*<<< orphan*/  pedantic ; 
 int /*<<< orphan*/  FUNC32 (struct z_candidate*) ; 
 struct z_candidate* FUNC33 (struct z_candidate*,int /*<<< orphan*/ ,int*) ; 
 struct z_candidate* FUNC34 (struct z_candidate*) ; 
 char* FUNC35 (char*,char*,char*) ; 

__attribute__((used)) static struct z_candidate *
FUNC36 (tree totype, tree expr, int flags)
{
  struct z_candidate *candidates, *cand;
  tree fromtype = FUNC12 (expr);
  tree ctors = NULL_TREE;
  tree conv_fns = NULL_TREE;
  conversion *conv = NULL;
  tree args = NULL_TREE;
  bool any_viable_p;

  /* We represent conversion within a hierarchy using RVALUE_CONV and
     BASE_CONV, as specified by [over.best.ics]; these become plain
     constructor calls, as specified in [dcl.init].  */
  FUNC26 (!FUNC6 (fromtype) || !FUNC6 (totype)
	      || !FUNC5 (totype, fromtype));

  if (FUNC6 (totype))
    ctors = FUNC29 (totype, complete_ctor_identifier, 0);

  if (FUNC6 (fromtype))
    conv_fns = FUNC28 (fromtype);

  candidates = 0;
  flags |= LOOKUP_NO_CONVERSION;

  if (ctors)
    {
      tree t;

      ctors = FUNC0 (ctors);

      t = FUNC21 (FUNC22 (totype), 0);
      args = FUNC24 (NULL_TREE, expr);
      /* We should never try to call the abstract or base constructor
	 from here.  */
      FUNC26 (!FUNC2 (FUNC7 (ctors))
		  && !FUNC3 (FUNC7 (ctors)));
      args = FUNC35 (NULL_TREE, t, args);
    }
  for (; ctors; ctors = FUNC8 (ctors))
    {
      tree ctor = FUNC7 (ctors);
      if (FUNC4 (ctor))
	continue;

      if (FUNC10 (ctor) == TEMPLATE_DECL)
	cand = FUNC16 (&candidates, ctor, totype,
				       NULL_TREE, args, NULL_TREE,
				       FUNC14 (totype),
				       FUNC14 (totype),
				       flags,
				       DEDUCE_CALL);
      else
	cand = FUNC15 (&candidates, ctor, totype,
				       args, FUNC14 (totype),
				       FUNC14 (totype),
				       flags);

      if (cand)
	cand->second_conv = FUNC20 (totype, NULL_TREE);
    }

  if (conv_fns)
    args = FUNC24 (NULL_TREE, FUNC23 (expr));

  for (; conv_fns; conv_fns = FUNC9 (conv_fns))
    {
      tree fns;
      tree conversion_path = FUNC11 (conv_fns);
      int convflags = LOOKUP_NO_CONVERSION;

      /* If we are called to convert to a reference type, we are trying to
	 find an lvalue binding, so don't even consider temporaries.  If
	 we don't find an lvalue binding, the caller will try again to
	 look for a temporary binding.  */
      if (FUNC10 (totype) == REFERENCE_TYPE)
	convflags |= LOOKUP_NO_TEMP_BIND;

      for (fns = FUNC13 (conv_fns); fns; fns = FUNC8 (fns))
	{
	  tree fn = FUNC7 (fns);

	  /* [over.match.funcs] For conversion functions, the function
	     is considered to be a member of the class of the implicit
	     object argument for the purpose of defining the type of
	     the implicit object parameter.

	     So we pass fromtype as CTYPE to add_*_candidate.  */

	  if (FUNC10 (fn) == TEMPLATE_DECL)
	    cand = FUNC16 (&candidates, fn, fromtype,
					   NULL_TREE,
					   args, totype,
					   FUNC14 (fromtype),
					   conversion_path,
					   flags,
					   DEDUCE_CONV);
	  else
	    cand = FUNC15 (&candidates, fn, fromtype,
					   args,
					   FUNC14 (fromtype),
					   conversion_path,
					   flags);

	  if (cand)
	    {
	      conversion *ics
		= FUNC27 (totype,
				       FUNC12 (FUNC12 (cand->fn)),
				       0,
				       /*c_cast_p=*/false, convflags);

	      cand->second_conv = ics;

	      if (!ics)
		cand->viable = 0;
	      else if (candidates->viable == 1 && ics->bad_p)
		cand->viable = -1;
	    }
	}
    }

  candidates = FUNC33 (candidates, pedantic, &any_viable_p);
  if (!any_viable_p)
    return NULL;

  cand = FUNC34 (candidates);
  if (cand == 0)
    {
      if (flags & LOOKUP_COMPLAIN)
	{
	  FUNC25 ("conversion from %qT to %qT is ambiguous",
		    fromtype, totype);
	  FUNC32 (candidates);
	}

      cand = candidates;	/* any one will do */
      cand->second_conv = FUNC18 (totype, expr);
      cand->second_conv->user_conv_p = true;
      if (!FUNC17 (candidates))
	cand->second_conv->bad_p = true;
      /* If there are viable candidates, don't set ICS_BAD_FLAG; an
	 ambiguous conversion is no worse than another user-defined
	 conversion.  */

      return cand;
    }

  /* Build the user conversion sequence.  */
  conv = FUNC19
    (ck_user,
     (FUNC1 (cand->fn)
      ? totype : FUNC31 (FUNC12 (FUNC12 (cand->fn)))),
     FUNC20 (FUNC12 (expr), expr));
  conv->cand = cand;

  /* Combine it with the second conversion sequence.  */
  cand->second_conv = FUNC30 (conv,
						  cand->second_conv);

  if (cand->viable == -1)
    cand->second_conv->bad_p = true;

  return cand;
}