#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ tree ;
struct z_candidate {scalar_t__ fn; TYPE_2__** convs; struct candidate_warning* warnings; } ;
struct candidate_warning {int /*<<< orphan*/  loser; struct candidate_warning* next; } ;
typedef  enum tree_code { ____Placeholder_tree_code } tree_code ;
struct TYPE_5__ {TYPE_2__* next; } ;
struct TYPE_6__ {scalar_t__ kind; TYPE_1__ u; } ;
typedef  TYPE_2__ conversion ;
struct TYPE_7__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
#define  ADDR_EXPR 170 
#define  ARRAY_REF 169 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
#define  BIT_AND_EXPR 168 
#define  BIT_IOR_EXPR 167 
#define  BIT_NOT_EXPR 166 
#define  BIT_XOR_EXPR 165 
#define  CALL_EXPR 164 
 scalar_t__ FUNC2 (scalar_t__) ; 
#define  COMPONENT_REF 163 
#define  COMPOUND_EXPR 162 
#define  COND_EXPR 161 
#define  DELETE_EXPR 160 
 scalar_t__ ENUMERAL_TYPE ; 
#define  EQ_EXPR 159 
 scalar_t__ FUNCTION_DECL ; 
#define  GE_EXPR 158 
#define  GT_EXPR 157 
#define  IMAGPART_EXPR 156 
#define  INDIRECT_REF 155 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
#define  LE_EXPR 154 
 int LOOKUP_COMPLAIN ; 
 int /*<<< orphan*/  LOOKUP_NORMAL ; 
#define  LSHIFT_EXPR 153 
#define  LT_EXPR 152 
#define  MAX_EXPR 151 
#define  MEMBER_REF 150 
#define  MINUS_EXPR 149 
#define  MIN_EXPR 148 
#define  MODIFY_EXPR 147 
#define  MULT_EXPR 146 
#define  NEGATE_EXPR 145 
#define  NEW_EXPR 144 
#define  NE_EXPR 143 
 int NOP_EXPR ; 
 scalar_t__ NULL_TREE ; 
#define  PLUS_EXPR 142 
#define  POSTDECREMENT_EXPR 141 
#define  POSTINCREMENT_EXPR 140 
#define  PREDECREMENT_EXPR 139 
#define  PREINCREMENT_EXPR 138 
#define  REALPART_EXPR 137 
#define  RSHIFT_EXPR 136 
 scalar_t__ FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
#define  TRUNC_DIV_EXPR 135 
#define  TRUNC_MOD_EXPR 134 
#define  TRUTH_ANDIF_EXPR 133 
#define  TRUTH_NOT_EXPR 132 
#define  TRUTH_ORIF_EXPR 131 
 scalar_t__ FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
#define  UNARY_PLUS_EXPR 130 
#define  VEC_DELETE_EXPR 129 
#define  VEC_NEW_EXPR 128 
 scalar_t__ VOID_TYPE ; 
 int /*<<< orphan*/  FUNC8 (struct z_candidate**,int,int,scalar_t__,scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,scalar_t__,scalar_t__,int,scalar_t__,scalar_t__,int,struct z_candidate**) ; 
 scalar_t__ FUNC10 (int) ; 
 scalar_t__ FUNC11 (int) ; 
 scalar_t__ FUNC12 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC13 (scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC14 (scalar_t__,char*) ; 
 scalar_t__ FUNC15 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC16 (scalar_t__,int,scalar_t__) ; 
 scalar_t__ FUNC17 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC18 (struct z_candidate*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC19 (int,scalar_t__,int) ; 
 scalar_t__ ck_ref_bind ; 
 int /*<<< orphan*/  conversion_obstack ; 
 void* FUNC20 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC21 (TYPE_2__*,scalar_t__) ; 
 scalar_t__ FUNC22 (int,scalar_t__,scalar_t__) ; 
 scalar_t__ error_mark_node ; 
 scalar_t__ FUNC23 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC24 () ; 
 scalar_t__ integer_zero_node ; 
 int /*<<< orphan*/  FUNC25 (struct z_candidate*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC26 (scalar_t__,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC27 (scalar_t__,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ *,void*) ; 
 int /*<<< orphan*/  FUNC29 (int,int,scalar_t__,scalar_t__,scalar_t__,char*) ; 
 TYPE_3__* operator_name_info ; 
 int pedantic ; 
 int /*<<< orphan*/  FUNC30 (char*,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC31 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC32 (struct z_candidate*) ; 
 struct z_candidate* FUNC33 (struct z_candidate*,int,int*) ; 
 struct z_candidate* FUNC34 (struct z_candidate*) ; 
 scalar_t__ FUNC35 (scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC36 (int /*<<< orphan*/ ,char*,scalar_t__,scalar_t__) ; 

tree
FUNC37 (enum tree_code code, int flags, tree arg1, tree arg2, tree arg3,
	      bool *overloaded_p)
{
  struct z_candidate *candidates = 0, *cand;
  tree arglist, fnname;
  tree args[3];
  tree result = NULL_TREE;
  bool result_valid_p = false;
  enum tree_code code2 = NOP_EXPR;
  conversion *conv;
  void *p;
  bool strict_p;
  bool any_viable_p;

  if (FUNC23 (arg1)
      || FUNC23 (arg2)
      || FUNC23 (arg3))
    return error_mark_node;

  if (code == MODIFY_EXPR)
    {
      code2 = FUNC4 (arg3);
      arg3 = NULL_TREE;
      fnname = FUNC10 (code2);
    }
  else
    fnname = FUNC11 (code);

  arg1 = FUNC31 (arg1);

  switch (code)
    {
    case NEW_EXPR:
    case VEC_NEW_EXPR:
    case VEC_DELETE_EXPR:
    case DELETE_EXPR:
      /* Use build_op_new_call and build_op_delete_call instead.  */
      FUNC24 ();

    case CALL_EXPR:
      return FUNC17 (arg1, arg2);

    default:
      break;
    }

  arg2 = FUNC31 (arg2);
  arg3 = FUNC31 (arg3);

  if (code == COND_EXPR)
    {
      if (arg2 == NULL_TREE
	  || FUNC4 (FUNC5 (arg2)) == VOID_TYPE
	  || FUNC4 (FUNC5 (arg3)) == VOID_TYPE
	  || (! FUNC3 (FUNC5 (arg2))
	      && ! FUNC3 (FUNC5 (arg3))))
	goto builtin;
    }
  else if (! FUNC3 (FUNC5 (arg1))
	   && (! arg2 || ! FUNC3 (FUNC5 (arg2))))
    goto builtin;

  if (code == POSTINCREMENT_EXPR || code == POSTDECREMENT_EXPR)
    arg2 = integer_zero_node;

  arglist = NULL_TREE;
  if (arg3)
    arglist = FUNC35 (NULL_TREE, arg3, arglist);
  if (arg2)
    arglist = FUNC35 (NULL_TREE, arg2, arglist);
  arglist = FUNC35 (NULL_TREE, arg1, arglist);

  /* Get the high-water mark for the CONVERSION_OBSTACK.  */
  p = FUNC20 (0);

  /* Add namespace-scope operators to the list of functions to
     consider.  */
  FUNC9 (FUNC27 (fnname, arglist, /*block_p=*/true),
		  arglist, NULL_TREE, false, NULL_TREE, NULL_TREE,
		  flags, &candidates);
  /* Add class-member operators to the candidate set.  */
  if (FUNC2 (FUNC5 (arg1)))
    {
      tree fns;

      fns = FUNC26 (FUNC5 (arg1), fnname, 1);
      if (fns == error_mark_node)
	{
	  result = error_mark_node;
	  goto user_defined_result_ready;
	}
      if (fns)
	FUNC9 (FUNC1 (fns), arglist,
			NULL_TREE, false,
			FUNC0 (fns),
			FUNC6 (FUNC5 (arg1)),
			flags, &candidates);
    }

  /* Rearrange the arguments for ?: so that add_builtin_candidate only has
     to know about two args; a builtin candidate will always have a first
     parameter of type bool.  We'll handle that in
     build_builtin_candidate.  */
  if (code == COND_EXPR)
    {
      args[0] = arg2;
      args[1] = arg3;
      args[2] = arg1;
    }
  else
    {
      args[0] = arg1;
      args[1] = arg2;
      args[2] = NULL_TREE;
    }

  FUNC8 (&candidates, code, code2, fnname, args, flags);

  switch (code)
    {
    case COMPOUND_EXPR:
    case ADDR_EXPR:
      /* For these, the built-in candidates set is empty
	 [over.match.oper]/3.  We don't want non-strict matches
	 because exact matches are always possible with built-in
	 operators.  The built-in candidate set for COMPONENT_REF
	 would be empty too, but since there are no such built-in
	 operators, we accept non-strict matches for them.  */
      strict_p = true;
      break;

    default:
      strict_p = pedantic;
      break;
    }

  candidates = FUNC33 (candidates, strict_p, &any_viable_p);
  if (!any_viable_p)
    {
      switch (code)
	{
	case POSTINCREMENT_EXPR:
	case POSTDECREMENT_EXPR:
	  /* Look for an `operator++ (int)'.  If they didn't have
	     one, then we fall back to the old way of doing things.  */
	  if (flags & LOOKUP_COMPLAIN)
	    FUNC30 ("no %<%D(int)%> declared for postfix %qs, "
		     "trying prefix operator instead",
		     fnname,
		     operator_name_info[code].name);
	  if (code == POSTINCREMENT_EXPR)
	    code = PREINCREMENT_EXPR;
	  else
	    code = PREDECREMENT_EXPR;
	  result = FUNC37 (code, flags, arg1, NULL_TREE, NULL_TREE,
				 overloaded_p);
	  break;

	  /* The caller will deal with these.  */
	case ADDR_EXPR:
	case COMPOUND_EXPR:
	case COMPONENT_REF:
	  result = NULL_TREE;
	  result_valid_p = true;
	  break;

	default:
	  if (flags & LOOKUP_COMPLAIN)
	    {
	      FUNC29 (code, code2, arg1, arg2, arg3, "no match");
	      FUNC32 (candidates);
	    }
	  result = error_mark_node;
	  break;
	}
    }
  else
    {
      cand = FUNC34 (candidates);
      if (cand == 0)
	{
	  if (flags & LOOKUP_COMPLAIN)
	    {
	      FUNC29 (code, code2, arg1, arg2, arg3, "ambiguous overload");
	      FUNC32 (candidates);
	    }
	  result = error_mark_node;
	}
      else if (FUNC4 (cand->fn) == FUNCTION_DECL)
	{
	  if (overloaded_p)
	    *overloaded_p = true;

	  result = FUNC18 (cand, LOOKUP_NORMAL);
	}
      else
	{
	  /* Give any warnings we noticed during overload resolution.  */
	  if (cand->warnings)
	    {
	      struct candidate_warning *w;
	      for (w = cand->warnings; w; w = w->next)
		FUNC25 (cand, w->loser, 1);
	    }

	  /* Check for comparison of different enum types.  */
	  switch (code)
	    {
	    case GT_EXPR:
	    case LT_EXPR:
	    case GE_EXPR:
	    case LE_EXPR:
	    case EQ_EXPR:
	    case NE_EXPR:
	      if (FUNC4 (FUNC5 (arg1)) == ENUMERAL_TYPE
		  && FUNC4 (FUNC5 (arg2)) == ENUMERAL_TYPE
		  && (FUNC7 (FUNC5 (arg1))
		      != FUNC7 (FUNC5 (arg2))))
		{
		  FUNC36 (0, "comparison between %q#T and %q#T",
			   FUNC5 (arg1), FUNC5 (arg2));
		}
	      break;
	    default:
	      break;
	    }

	  /* We need to strip any leading REF_BIND so that bitfields
	     don't cause errors.  This should not remove any important
	     conversions, because builtins don't apply to class
	     objects directly.  */
	  conv = cand->convs[0];
	  if (conv->kind == ck_ref_bind)
	    conv = conv->u.next;
	  arg1 = FUNC21 (conv, arg1);
	  if (arg2)
	    {
	      conv = cand->convs[1];
	      if (conv->kind == ck_ref_bind)
		conv = conv->u.next;
	      arg2 = FUNC21 (conv, arg2);
	    }
	  if (arg3)
	    {
	      conv = cand->convs[2];
	      if (conv->kind == ck_ref_bind)
		conv = conv->u.next;
	      arg3 = FUNC21 (conv, arg3);
	    }
	}
    }

 user_defined_result_ready:

  /* Free all the conversions we allocated.  */
  FUNC28 (&conversion_obstack, p);

  if (result || result_valid_p)
    return result;

 builtin:
  switch (code)
    {
    case MODIFY_EXPR:
      return FUNC16 (arg1, code2, arg2);

    case INDIRECT_REF:
      return FUNC14 (arg1, "unary *");

    case PLUS_EXPR:
    case MINUS_EXPR:
    case MULT_EXPR:
    case TRUNC_DIV_EXPR:
    case GT_EXPR:
    case LT_EXPR:
    case GE_EXPR:
    case LE_EXPR:
    case EQ_EXPR:
    case NE_EXPR:
    case MAX_EXPR:
    case MIN_EXPR:
    case LSHIFT_EXPR:
    case RSHIFT_EXPR:
    case TRUNC_MOD_EXPR:
    case BIT_AND_EXPR:
    case BIT_IOR_EXPR:
    case BIT_XOR_EXPR:
    case TRUTH_ANDIF_EXPR:
    case TRUTH_ORIF_EXPR:
      return FUNC22 (code, arg1, arg2);

    case UNARY_PLUS_EXPR:
    case NEGATE_EXPR:
    case BIT_NOT_EXPR:
    case TRUTH_NOT_EXPR:
    case PREINCREMENT_EXPR:
    case POSTINCREMENT_EXPR:
    case PREDECREMENT_EXPR:
    case POSTDECREMENT_EXPR:
    case REALPART_EXPR:
    case IMAGPART_EXPR:
      return FUNC19 (code, arg1, candidates != 0);

    case ARRAY_REF:
      return FUNC12 (arg1, arg2);

    case COND_EXPR:
      return FUNC13 (arg1, arg2, arg3);

    case MEMBER_REF:
      return FUNC15 (FUNC14 (arg1, NULL), arg2);

      /* The caller will deal with these.  */
    case ADDR_EXPR:
    case COMPONENT_REF:
    case COMPOUND_EXPR:
      return NULL_TREE;

    default:
      FUNC24 ();
    }
  return NULL_TREE;
}