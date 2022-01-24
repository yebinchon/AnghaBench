#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ tree ;
struct z_candidate {scalar_t__ viable; scalar_t__ fn; size_t num_convs; TYPE_3__** convs; TYPE_3__* second_conv; scalar_t__ template_decl; } ;
typedef  scalar_t__ conversion_rank ;
struct TYPE_9__ {TYPE_1__* next; } ;
struct TYPE_10__ {scalar_t__ kind; scalar_t__ type; TYPE_2__ u; } ;
typedef  TYPE_3__ conversion ;
struct TYPE_8__ {scalar_t__ type; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_3__*) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int FUNC4 (scalar_t__) ; 
 scalar_t__ ENUMERAL_TYPE ; 
 scalar_t__ IDENTIFIER_NODE ; 
 scalar_t__ INTEGER_TYPE ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  OPT_Wconversion ; 
 int /*<<< orphan*/  OPT_Wsign_promo ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 scalar_t__ FUNC8 (scalar_t__) ; 
 scalar_t__ FUNC9 (scalar_t__) ; 
 scalar_t__ FUNC10 (scalar_t__) ; 
 scalar_t__ FUNC11 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 int /*<<< orphan*/  FUNC13 (struct z_candidate*,struct z_candidate*) ; 
 scalar_t__ ck_std ; 
 int /*<<< orphan*/  FUNC14 (scalar_t__,scalar_t__) ; 
 int FUNC15 (TYPE_3__*,TYPE_3__*) ; 
 scalar_t__ cr_identity ; 
 scalar_t__ cr_promotion ; 
 scalar_t__ cr_std ; 
 scalar_t__ FUNC16 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC17 (int) ; 
 int /*<<< orphan*/  FUNC18 (char*) ; 
 int FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  pedantic ; 
 int /*<<< orphan*/  FUNC20 (char*) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,struct z_candidate*) ; 
 int /*<<< orphan*/  FUNC22 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC23 (TYPE_3__*) ; 
 scalar_t__ warn_conversion ; 
 scalar_t__ warn_sign_promo ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ,char*,scalar_t__,...) ; 

__attribute__((used)) static int
FUNC25 (struct z_candidate *cand1, struct z_candidate *cand2, bool warn)
{
  int winner = 0;
  int off1 = 0, off2 = 0;
  size_t i;
  size_t len;

  /* Candidates that involve bad conversions are always worse than those
     that don't.  */
  if (cand1->viable > cand2->viable)
    return 1;
  if (cand1->viable < cand2->viable)
    return -1;

  /* If we have two pseudo-candidates for conversions to the same type,
     or two candidates for the same function, arbitrarily pick one.  */
  if (cand1->fn == cand2->fn
      && (FUNC5 (cand1->fn)))
    return 1;

  /* a viable function F1
     is defined to be a better function than another viable function F2  if
     for  all arguments i, ICSi(F1) is not a worse conversion sequence than
     ICSi(F2), and then */

  /* for some argument j, ICSj(F1) is a better conversion  sequence  than
     ICSj(F2) */

  /* For comparing static and non-static member functions, we ignore
     the implicit object parameter of the non-static function.  The
     standard says to pretend that the static function has an object
     parm, but that won't work with operator overloading.  */
  len = cand1->num_convs;
  if (len != cand2->num_convs)
    {
      int static_1 = FUNC4 (cand1->fn);
      int static_2 = FUNC4 (cand2->fn);

      FUNC17 (static_1 != static_2);

      if (static_1)
	off2 = 1;
      else
	{
	  off1 = 1;
	  --len;
	}
    }

  for (i = 0; i < len; ++i)
    {
      conversion *t1 = cand1->convs[i + off1];
      conversion *t2 = cand2->convs[i + off2];
      int comp = FUNC15 (t1, t2);

      if (comp != 0)
	{
	  if (warn_sign_promo
	      && (FUNC0 (t1) + FUNC0 (t2)
		  == cr_std + cr_promotion)
	      && t1->kind == ck_std
	      && t2->kind == ck_std
	      && FUNC8 (t1->type) == INTEGER_TYPE
	      && FUNC8 (t2->type) == INTEGER_TYPE
	      && (FUNC10 (t1->type)
		  == FUNC10 (t2->type))
	      && (FUNC11 (t1->u.next->type)
		  || (FUNC8 (t1->u.next->type)
		      == ENUMERAL_TYPE)))
	    {
	      tree type = t1->u.next->type;
	      tree type1, type2;
	      struct z_candidate *w, *l;
	      if (comp > 0)
		type1 = t1->type, type2 = t2->type,
		  w = cand1, l = cand2;
	      else
		type1 = t2->type, type2 = t1->type,
		  w = cand2, l = cand1;

	      if (warn)
		{
		  FUNC24 (OPT_Wsign_promo, "passing %qT chooses %qT over %qT",
			   type, type1, type2);
		  FUNC24 (OPT_Wsign_promo, "  in call to %qD", w->fn);
		}
	      else
		FUNC13 (w, l);
	    }

	  if (winner && comp != winner)
	    {
	      winner = 0;
	      goto tweak;
	    }
	  winner = comp;
	}
    }

  /* warn about confusing overload resolution for user-defined conversions,
     either between a constructor and a conversion op, or between two
     conversion ops.  */
  if (winner && warn_conversion && cand1->second_conv
      && (!FUNC1 (cand1->fn) || !FUNC1 (cand2->fn))
      && winner != FUNC15 (cand1->second_conv, cand2->second_conv))
    {
      struct z_candidate *w, *l;
      bool give_warning = false;

      if (winner == 1)
	w = cand1, l = cand2;
      else
	w = cand2, l = cand1;

      /* We don't want to complain about `X::operator T1 ()'
	 beating `X::operator T2 () const', when T2 is a no less
	 cv-qualified version of T1.  */
      if (FUNC2 (w->fn) == FUNC2 (l->fn)
	  && !FUNC1 (w->fn) && !FUNC1 (l->fn))
	{
	  tree t = FUNC9 (FUNC9 (l->fn));
	  tree f = FUNC9 (FUNC9 (w->fn));

	  if (FUNC8 (t) == FUNC8 (f) && FUNC6 (t))
	    {
	      t = FUNC9 (t);
	      f = FUNC9 (f);
	    }
	  if (!FUNC14 (t, f))
	    give_warning = true;
	}
      else
	give_warning = true;

      if (!give_warning)
	/*NOP*/;
      else if (warn)
	{
	  tree source = FUNC23 (w->convs[0]);
	  if (! FUNC1 (w->fn))
	    source = FUNC9 (source);
	  FUNC24 (OPT_Wconversion, "choosing %qD over %qD", w->fn, l->fn);
	  FUNC24 (OPT_Wconversion, "  for conversion from %qT to %qT",
		   source, w->second_conv->type);
	  FUNC18 ("  because conversion sequence for the argument is better");
	}
      else
	FUNC13 (w, l);
    }

  if (winner)
    return winner;

  /* or, if not that,
     F1 is a non-template function and F2 is a template function
     specialization.  */

  if (!cand1->template_decl && cand2->template_decl)
    return 1;
  else if (cand1->template_decl && !cand2->template_decl)
    return -1;

  /* or, if not that,
     F1 and F2 are template functions and the function template for F1 is
     more specialized than the template for F2 according to the partial
     ordering rules.  */

  if (cand1->template_decl && cand2->template_decl)
    {
      winner = FUNC19
	(FUNC7 (cand1->template_decl),
	 FUNC7 (cand2->template_decl),
	 /* [temp.func.order]: The presence of unused ellipsis and default
	    arguments has no effect on the partial ordering of function
	    templates.   add_function_candidate() will not have
	    counted the "this" argument for constructors.  */
	 cand1->num_convs + FUNC1 (cand1->fn));
      if (winner)
	return winner;
    }

  /* or, if not that,
     the  context  is  an  initialization by user-defined conversion (see
     _dcl.init_  and  _over.match.user_)  and  the  standard   conversion
     sequence  from  the return type of F1 to the destination type (i.e.,
     the type of the entity being initialized)  is  a  better  conversion
     sequence  than the standard conversion sequence from the return type
     of F2 to the destination type.  */

  if (cand1->second_conv)
    {
      winner = FUNC15 (cand1->second_conv, cand2->second_conv);
      if (winner)
	return winner;
    }

  /* Check whether we can discard a builtin candidate, either because we
     have two identical ones or matching builtin and non-builtin candidates.

     (Pedantically in the latter case the builtin which matched the user
     function should not be added to the overload set, but we spot it here.

     [over.match.oper]
     ... the builtin candidates include ...
     - do not have the same parameter type list as any non-template
       non-member candidate.  */

  if (FUNC8 (cand1->fn) == IDENTIFIER_NODE
      || FUNC8 (cand2->fn) == IDENTIFIER_NODE)
    {
      for (i = 0; i < len; ++i)
	if (!FUNC22 (cand1->convs[i]->type,
			  cand2->convs[i]->type))
	  break;
      if (i == cand1->num_convs)
	{
	  if (cand1->fn == cand2->fn)
	    /* Two built-in candidates; arbitrarily pick one.  */
	    return 1;
	  else if (FUNC8 (cand1->fn) == IDENTIFIER_NODE)
	    /* cand1 is built-in; prefer cand2.  */
	    return -1;
	  else
	    /* cand2 is built-in; prefer cand1.  */
	    return 1;
	}
    }

  /* If the two functions are the same (this can happen with declarations
     in multiple scopes and arg-dependent lookup), arbitrarily choose one.  */
  if (FUNC3 (cand1->fn) && FUNC3 (cand2->fn)
      && FUNC16 (cand1->fn, cand2->fn))
    return 1;

tweak:

  /* Extension: If the worst conversion for one candidate is worse than the
     worst conversion for the other, take the first.  */
  if (!pedantic)
    {
      conversion_rank rank1 = cr_identity, rank2 = cr_identity;
      struct z_candidate *w = 0, *l = 0;

      for (i = 0; i < len; ++i)
	{
	  if (FUNC0 (cand1->convs[i+off1]) > rank1)
	    rank1 = FUNC0 (cand1->convs[i+off1]);
	  if (FUNC0 (cand2->convs[i + off2]) > rank2)
	    rank2 = FUNC0 (cand2->convs[i + off2]);
	}
      if (rank1 < rank2)
	winner = 1, w = cand1, l = cand2;
      if (rank1 > rank2)
	winner = -1, w = cand2, l = cand1;
      if (winner)
	{
	  if (warn)
	    {
	      FUNC20 ("\
ISO C++ says that these are ambiguous, even \
though the worst conversion for the first is better than \
the worst conversion for the second:");
	      FUNC21 (FUNC12("candidate 1:"), w);
	      FUNC21 (FUNC12("candidate 2:"), l);
	    }
	  else
	    FUNC13 (w, l);
	  return winner;
	}
    }

  FUNC17 (!winner);
  return 0;
}