#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_7__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tree ;
struct TYPE_9__ {TYPE_1__* cur; } ;
typedef  TYPE_2__ reshape_iter ;
struct TYPE_10__ {int /*<<< orphan*/  value; } ;
struct TYPE_8__ {int /*<<< orphan*/  value; } ;

/* Variables and functions */
 scalar_t__ ARRAY_TYPE ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ CONSTRUCTOR ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LOOKUP_NORMAL ; 
 int /*<<< orphan*/  OPT_Wmissing_braces ; 
 scalar_t__ STRING_CST ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 scalar_t__ FUNC8 (scalar_t__) ; 
 scalar_t__ VECTOR_TYPE ; 
 TYPE_7__* FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  constructor_elt ; 
 int /*<<< orphan*/  FUNC13 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  error_mark_node ; 
 int /*<<< orphan*/  FUNC14 (int) ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static tree
FUNC21 (tree type, reshape_iter *d, bool first_initializer_p)
{
  tree init = d->cur->value;

  /* A non-aggregate type is always initialized with a single
     initializer.  */
  if (!FUNC4 (type))
    {
      /* It is invalid to initialize a non-aggregate type with a
	 brace-enclosed initializer.
	 We need to check for BRACE_ENCLOSED_INITIALIZER_P here because
	 of g++.old-deja/g++.mike/p7626.C: a pointer-to-member constant is
	 a CONSTRUCTOR (with a record type).  */
      if (FUNC5 (init) == CONSTRUCTOR
	  && FUNC0 (init))  /* p7626.C */
	{
	  FUNC13 ("braces around scalar initializer for type %qT", type);
	  init = error_mark_node;
	}

      d->cur++;
      return init;
    }

  /* [dcl.init.aggr]

     All implicit type conversions (clause _conv_) are considered when
     initializing the aggregate member with an initializer from an
     initializer-list.  If the initializer can initialize a member,
     the member is initialized.  Otherwise, if the member is itself a
     non-empty subaggregate, brace elision is assumed and the
     initializer is considered for the initialization of the first
     member of the subaggregate.  */
  if (FUNC5 (init) != CONSTRUCTOR
      && FUNC11 (type, FUNC6 (init), init, LOOKUP_NORMAL))
    {
      d->cur++;
      return init;
    }

  /* [dcl.init.string]

      A char array (whether plain char, signed char, or unsigned char)
      can be initialized by a string-literal (optionally enclosed in
      braces); a wchar_t array can be initialized by a wide
      string-literal (optionally enclosed in braces).  */
  if (FUNC5 (type) == ARRAY_TYPE
      && FUNC12 (FUNC7 (FUNC6 (type))))
    {
      tree str_init = init;

      /* Strip one level of braces if and only if they enclose a single
	 element (as allowed by [dcl.init.string]).  */
      if (!first_initializer_p
	  && FUNC5 (str_init) == CONSTRUCTOR
	  && FUNC10 (constructor_elt, FUNC3 (str_init)) == 1)
	{
	  str_init = FUNC9 (constructor_elt,
				FUNC3 (str_init), 0)->value;
	}

      /* If it's a string literal, then it's the initializer for the array
	 as a whole. Otherwise, continue with normal initialization for
	 array types (one value per array element).  */
      if (FUNC5 (str_init) == STRING_CST)
	{
	  d->cur++;
	  return str_init;
	}
    }

  /* The following cases are about aggregates. If we are not within a full
     initializer already, and there is not a CONSTRUCTOR, it means that there
     is a missing set of braces (that is, we are processing the case for
     which reshape_init exists).  */
  if (!first_initializer_p)
    {
      if (FUNC5 (init) == CONSTRUCTOR)
	{
	  if (FUNC6 (init) && FUNC8 (FUNC6 (init)))
	    /* There is no need to reshape pointer-to-member function
	       initializers, as they are always constructed correctly
	       by the front end.  */
           ;
	  else if (FUNC2 (init))
	  /* For a nested compound literal, there is no need to reshape since
	     brace elision is not allowed. Even if we decided to allow it,
	     we should add a call to reshape_init in finish_compound_literal,
	     before calling digest_init, so changing this code would still
	     not be necessary.  */
	    FUNC14 (!FUNC0 (init));
	  else
	    {
	      ++d->cur;
	      FUNC14 (FUNC0 (init));
	      return FUNC16 (type, init);
	    }
	}

      FUNC20 (OPT_Wmissing_braces, "missing braces around initializer for %qT",
	       type);
    }

  /* Dispatch to specialized routines.  */
  if (FUNC1 (type))
    return FUNC18 (type, d, first_initializer_p);
  else if (FUNC5 (type) == ARRAY_TYPE)
    return FUNC17 (type, d);
  else if (FUNC5 (type) == VECTOR_TYPE)
    return FUNC19 (type, d);
  else
    FUNC15();
}