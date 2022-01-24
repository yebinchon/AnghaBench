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
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ ARRAY_TYPE ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  INIT_EXPR ; 
 int LOOKUP_DESTRUCTOR ; 
 int LOOKUP_NONVIRTUAL ; 
 scalar_t__ NULL_TREE ; 
 int /*<<< orphan*/  OPT_Weffc__ ; 
 scalar_t__ REFERENCE_TYPE ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ TREE_LIST ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC9 (scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,scalar_t__,scalar_t__,int) ; 
 scalar_t__ FUNC11 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC12 (scalar_t__,scalar_t__,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (scalar_t__,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC14 (scalar_t__,scalar_t__,scalar_t__,int,int) ; 
 scalar_t__ FUNC15 (scalar_t__,char*) ; 
 int /*<<< orphan*/  current_class_ref ; 
 int /*<<< orphan*/  current_function_decl ; 
 scalar_t__ error_mark_node ; 
 int /*<<< orphan*/  FUNC16 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC17 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC18 (char*,int /*<<< orphan*/ ,scalar_t__,...) ; 
 int /*<<< orphan*/  sfk_complete_destructor ; 
 scalar_t__ void_type_node ; 
 scalar_t__ warn_ecpp ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void
FUNC20 (tree member, tree init)
{
  tree decl;
  tree type = FUNC4 (member);
  bool explicit;

  explicit = (init != NULL_TREE);

  /* Effective C++ rule 12 requires that all data members be
     initialized.  */
  if (warn_ecpp && !explicit && FUNC3 (type) != ARRAY_TYPE)
    FUNC19 (OPT_Weffc__, "%J%qD should be initialized in the member initialization "
	     "list", current_function_decl, member);

  if (init == void_type_node)
    init = NULL_TREE;

  /* Get an lvalue for the data member.  */
  decl = FUNC10 (current_class_ref, member,
					 /*access_path=*/NULL_TREE,
					 /*preserve_reference=*/true);
  if (decl == error_mark_node)
    return;

  /* Deal with this here, as we will get confused if we try to call the
     assignment op for an anonymous union.  This can happen in a
     synthesized copy constructor.  */
  if (FUNC0 (type))
    {
      if (init)
	{
	  init = FUNC8 (INIT_EXPR, type, decl, FUNC5 (init));
	  FUNC17 (init);
	}
    }
  else if (FUNC7 (type))
    {
      if (explicit
	  && FUNC3 (type) == ARRAY_TYPE
	  && init != NULL_TREE
	  && FUNC2 (init) == NULL_TREE
	  && FUNC3 (FUNC4 (FUNC5 (init))) == ARRAY_TYPE)
	{
	  /* Initialization of one array from another.  */
	  FUNC17 (FUNC14 (decl, NULL_TREE, FUNC5 (init),
					    /*explicit_default_init_p=*/false,
					    /* from_array=*/1));
	}
      else
	FUNC17 (FUNC9 (decl, init, 0));
    }
  else
    {
      if (init == NULL_TREE)
	{
	  if (explicit)
	    {
	      init = FUNC11 (type, /*nelts=*/NULL_TREE);
	      if (FUNC3 (type) == REFERENCE_TYPE)
		FUNC19 (0, "%Jdefault-initialization of %q#D, "
			 "which has reference type",
			 current_function_decl, member);
	    }
	  /* member traversal: note it leaves init NULL */
	  else if (FUNC3 (type) == REFERENCE_TYPE)
	    FUNC18 ("%Juninitialized reference member %qD",
		     current_function_decl, member);
	  else if (FUNC1 (type))
	    FUNC18 ("%Juninitialized member %qD with %<const%> type %qT",
		     current_function_decl, member, type);
	}
      else if (FUNC3 (init) == TREE_LIST)
	/* There was an explicit member initialization.  Do some work
	   in that case.  */
	init = FUNC15 (init, "member initializer");

      if (init)
	FUNC17 (FUNC13 (decl, INIT_EXPR, init));
    }

  if (FUNC6 (type))
    {
      tree expr;

      expr = FUNC10 (current_class_ref, member,
					     /*access_path=*/NULL_TREE,
					     /*preserve_reference=*/false);
      expr = FUNC12 (type, expr, sfk_complete_destructor,
			   LOOKUP_NONVIRTUAL|LOOKUP_DESTRUCTOR, 0);

      if (expr != error_mark_node)
	FUNC16 (expr);
    }
}