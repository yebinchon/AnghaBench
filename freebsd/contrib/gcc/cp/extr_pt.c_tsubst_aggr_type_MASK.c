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
typedef  int /*<<< orphan*/  tsubst_flags_t ;
typedef  scalar_t__ tree ;

/* Variables and functions */
#define  ENUMERAL_TYPE 130 
 scalar_t__ NULL_TREE ; 
#define  RECORD_TYPE 129 
 int FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
#define  UNION_TYPE 128 
 scalar_t__ FUNC7 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ error_mark_node ; 
 scalar_t__ FUNC8 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,int,int /*<<< orphan*/ ) ; 
 int skip_evaluation ; 
 scalar_t__ FUNC9 (scalar_t__,scalar_t__,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static tree
FUNC11 (tree t,
		  tree args,
		  tsubst_flags_t complain,
		  tree in_decl,
		  int entering_scope)
{
  if (t == NULL_TREE)
    return NULL_TREE;

  switch (FUNC0 (t))
    {
    case RECORD_TYPE:
      if (FUNC3 (t))
	return FUNC9 (FUNC2 (t), args, complain, in_decl);

      /* Else fall through.  */
    case ENUMERAL_TYPE:
    case UNION_TYPE:
      if (FUNC5 (t))
	{
	  tree argvec;
	  tree context;
	  tree r;
	  bool saved_skip_evaluation;

	  /* In "sizeof(X<I>)" we need to evaluate "I".  */
	  saved_skip_evaluation = skip_evaluation;
	  skip_evaluation = false;

	  /* First, determine the context for the type we are looking
	     up.  */
	  context = FUNC1 (t);
	  if (context)
	    context = FUNC11 (context, args, complain,
					in_decl, /*entering_scope=*/1);

	  /* Then, figure out what arguments are appropriate for the
	     type we are trying to find.  For example, given:

	       template <class T> struct S;
	       template <class T, class U> void f(T, U) { S<U> su; }

	     and supposing that we are instantiating f<int, double>,
	     then our ARGS will be {int, double}, but, when looking up
	     S we only want {double}.  */
	  argvec = FUNC10 (FUNC6 (t), args,
					 complain, in_decl);
	  if (argvec == error_mark_node)
	    r = error_mark_node;
	  else
	    {
	      r = FUNC8 (t, argvec, in_decl, context,
					 entering_scope, complain);
	      r = FUNC7 (r, FUNC4 (t), complain);
	    }

	  skip_evaluation = saved_skip_evaluation;

	  return r;
	}
      else
	/* This is not a template type, so there's nothing to do.  */
	return t;

    default:
      return FUNC9 (t, args, complain, in_decl);
    }
}