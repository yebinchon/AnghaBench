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
 scalar_t__ DOTSTAR_EXPR ; 
 scalar_t__ MEMBER_REF ; 
 int /*<<< orphan*/  NULL_TREE ; 
 scalar_t__ OFFSET_REF ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__,int) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,scalar_t__,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ error_mark_node ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 scalar_t__ FUNC10 (scalar_t__*,scalar_t__) ; 
 scalar_t__ processing_template_decl ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC12 (scalar_t__) ; 

tree
FUNC13 (tree fn, tree args)
{
  tree orig_fn;
  tree orig_args;
  tree expr;
  tree object;

  orig_fn = fn;
  orig_args = args;
  object = FUNC1 (fn, 0);

  if (processing_template_decl)
    {
      FUNC9 (FUNC0 (fn) == DOTSTAR_EXPR
		  || FUNC0 (fn) == MEMBER_REF);
      if (FUNC12 (fn)
	  || FUNC2 (args))
	return FUNC5 (CALL_EXPR, fn, args, NULL_TREE);

      /* Transform the arguments and add the implicit "this"
	 parameter.  That must be done before the FN is transformed
	 because we depend on the form of FN.  */
      args = FUNC6 (args);
      if (FUNC0 (fn) == DOTSTAR_EXPR)
	object = FUNC8 (ADDR_EXPR, object, 0);
      object = FUNC7 (object);
      args = FUNC11 (NULL_TREE, object, args);
      /* Now that the arguments are done, transform FN.  */
      fn = FUNC7 (fn);
    }

  /* A qualified name corresponding to a bound pointer-to-member is
     represented as an OFFSET_REF:

	struct B { void g(); };
	void (B::*p)();
	void B::g() { (this->*p)(); }  */
  if (FUNC0 (fn) == OFFSET_REF)
    {
      tree object_addr = FUNC8 (ADDR_EXPR, object, 0);
      fn = FUNC1 (fn, 1);
      fn = FUNC10 (&object_addr, fn);
      args = FUNC11 (NULL_TREE, object_addr, args);
    }

  expr = FUNC3 (fn, args);
  if (processing_template_decl && expr != error_mark_node)
    return FUNC4 (CALL_EXPR, expr, orig_fn, orig_args, NULL_TREE);
  return expr;
}