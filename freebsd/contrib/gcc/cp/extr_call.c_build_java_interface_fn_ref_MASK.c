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
 int /*<<< orphan*/  ADDR_EXPR ; 
 int /*<<< orphan*/  CALL_EXPR ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  NOT_BUILT_IN ; 
 int /*<<< orphan*/  NULL_TREE ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 scalar_t__ VAR_DECL ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,scalar_t__,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC14 () ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC16 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC18 (char*,scalar_t__) ; 
 scalar_t__ error_mark_node ; 
 int /*<<< orphan*/  FUNC19 (char*) ; 
 int /*<<< orphan*/  integer_zero_node ; 
 scalar_t__ java_iface_lookup_fn ; 
 scalar_t__ java_int_type_node ; 
 scalar_t__ FUNC20 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ ptr_type_node ; 
 scalar_t__ FUNC21 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 

__attribute__((used)) static tree
FUNC22 (tree fn, tree instance)
{
  tree lookup_args, lookup_fn, method, idx;
  tree klass_ref, iface, iface_ref;
  int i;

  if (!java_iface_lookup_fn)
    {
      tree endlink = FUNC14 ();
      tree t = FUNC21 (NULL_TREE, ptr_type_node,
			  FUNC21 (NULL_TREE, ptr_type_node,
				     FUNC21 (NULL_TREE, java_int_type_node,
						endlink)));
      java_iface_lookup_fn
	= FUNC16 ("_Jv_LookupInterfaceMethodIdx",
			    FUNC9 (ptr_type_node, t),
			    0, NOT_BUILT_IN, NULL, NULL_TREE);
    }

  /* Look up the pointer to the runtime java.lang.Class object for `instance'.
     This is the first entry in the vtable.  */
  klass_ref = FUNC15 (FUNC10 (instance, 0),
			      integer_zero_node);

  /* Get the java.lang.Class pointer for the interface being called.  */
  iface = FUNC0 (fn);
  iface_ref = FUNC20 (iface, FUNC19 ("class$"), 0, false);
  if (!iface_ref || FUNC3 (iface_ref) != VAR_DECL
      || FUNC0 (iface_ref) != iface)
    {
      FUNC18 ("could not find class$ field in java interface type %qT",
		iface);
      return error_mark_node;
    }
  iface_ref = FUNC8 (iface_ref);
  iface_ref = FUNC17 (FUNC12 (iface), iface_ref);

  /* Determine the itable index of FN.  */
  i = 1;
  for (method = FUNC5 (iface); method; method = FUNC2 (method))
    {
      if (!FUNC1 (method))
	continue;
      if (fn == method)
	break;
      i++;
    }
  idx = FUNC11 (NULL_TREE, i);

  lookup_args = FUNC21 (NULL_TREE, klass_ref,
			   FUNC21 (NULL_TREE, iface_ref,
				      FUNC13 (NULL_TREE, idx)));
  lookup_fn = FUNC6 (ADDR_EXPR,
		      FUNC12 (FUNC4 (java_iface_lookup_fn)),
		      java_iface_lookup_fn);
  return FUNC7 (CALL_EXPR, ptr_type_node, lookup_fn, lookup_args, NULL_TREE);
}