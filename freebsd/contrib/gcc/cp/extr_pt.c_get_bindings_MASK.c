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
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  DEDUCE_EXACT ; 
 int /*<<< orphan*/  LOOKUP_NORMAL ; 
 scalar_t__ NULL_TREE ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int,int) ; 
 scalar_t__ error_mark_node ; 
 scalar_t__ FUNC8 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int) ; 
 scalar_t__ FUNC10 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tf_none ; 
 scalar_t__ FUNC11 (scalar_t__,scalar_t__,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC12 (scalar_t__) ; 

__attribute__((used)) static tree
FUNC13 (tree fn, tree decl, tree explicit_args, bool check_rettype)
{
  int ntparms = FUNC2 (fn);
  tree targs = FUNC9 (ntparms);
  tree decl_type;
  tree decl_arg_types;

  /* Substitute the explicit template arguments into the type of DECL.
     The call to fn_type_unification will handle substitution into the
     FN.  */
  decl_type = FUNC5 (decl);
  if (explicit_args && FUNC12 (decl_type))
    {
      tree tmpl;
      tree converted_args;

      if (FUNC3 (decl))
	tmpl = FUNC4 (decl);
      else
	/* We can get here for some invalid specializations.  */
	return NULL_TREE;

      converted_args
	= FUNC7 (FUNC1 (tmpl),
				 explicit_args, NULL_TREE,
				 tf_none,
				 /*require_all_args=*/false,
				 /*use_default_args=*/false);
      if (converted_args == error_mark_node)
	return NULL_TREE;

      decl_type = FUNC11 (decl_type, converted_args, tf_none, NULL_TREE);
      if (decl_type == error_mark_node)
	return NULL_TREE;
    }

  /* Never do unification on the 'this' parameter.  */
  decl_arg_types = FUNC10 (decl, 
					      FUNC6 (decl_type));

  if (FUNC8 (fn, explicit_args, targs,
			   decl_arg_types,
			   (check_rettype || FUNC0 (fn)
			    ? FUNC5 (decl_type) : NULL_TREE),
			   DEDUCE_EXACT, LOOKUP_NORMAL))
    return NULL_TREE;

  return targs;
}