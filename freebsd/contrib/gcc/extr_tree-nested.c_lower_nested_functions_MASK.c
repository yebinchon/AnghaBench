#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tree ;
struct cgraph_node {int /*<<< orphan*/  nested; } ;
struct TYPE_8__ {struct TYPE_8__* inner; } ;

/* Variables and functions */
 struct cgraph_node* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  convert_local_reference ; 
 int /*<<< orphan*/  convert_nl_goto_receiver ; 
 int /*<<< orphan*/  convert_nl_goto_reference ; 
 int /*<<< orphan*/  convert_nonlocal_reference ; 
 TYPE_1__* FUNC2 (struct cgraph_node*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 TYPE_1__* root ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,TYPE_1__*) ; 

void
/* APPLE LOCAL radar 6305545 */
FUNC7 (tree fndecl, bool skip_outermost_fndecl)
{
  struct cgraph_node *cgn;

  /* If there are no nested functions, there's nothing to do.  */
  cgn = FUNC0 (fndecl);
  if (!cgn->nested)
    return;

  root = FUNC2 (cgn);
  /* APPLE LOCAL begin radar 6305545 */
  /* If skip_outermost_fndecl is true, we are lowering nested functions of
     a constructor/destructor which are cloned and thrown away. But we
     still have to lower their nested functions, but not the outermost function. */
  if (skip_outermost_fndecl)
    root = root->inner;
  /* APPLE LOCAL end radar 6305545 */
  FUNC6 (convert_nonlocal_reference, root);
  FUNC6 (convert_local_reference, root);
  FUNC6 (convert_nl_goto_reference, root);
  FUNC6 (convert_nl_goto_receiver, root);
  FUNC1 (root);
  FUNC3 (root);
  FUNC5 (root);
  FUNC4 (root);
  root = NULL;
}