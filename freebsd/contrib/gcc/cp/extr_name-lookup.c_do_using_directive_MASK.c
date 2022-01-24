#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ tree ;
struct TYPE_2__ {int /*<<< orphan*/  (* imported_module_or_decl ) (scalar_t__,scalar_t__) ;} ;

/* Variables and functions */
 scalar_t__ NAMESPACE_DECL ; 
 scalar_t__ NULL_TREE ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  USING_STMT ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC5 () ; 
 scalar_t__ current_namespace ; 
 scalar_t__ FUNC6 () ; 
 TYPE_1__* debug_hooks ; 
 scalar_t__ error_mark_node ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 scalar_t__ global_namespace ; 
 int /*<<< orphan*/  processing_template_decl ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 () ; 

void
FUNC11 (tree namespace)
{
  tree context = NULL_TREE;

  if (namespace == error_mark_node)
    return;

  FUNC7 (FUNC1 (namespace) == NAMESPACE_DECL);

  if (FUNC5 ())
    FUNC2 (FUNC4 (USING_STMT, namespace));
  namespace = FUNC0 (namespace);

  if (!FUNC10 ())
    {
      FUNC8 (namespace);
      context = FUNC6 ();
    }
  else
    {
      /* direct usage */
      FUNC3 (current_namespace, namespace, 0);
      if (current_namespace != global_namespace)
	context = current_namespace;
    }

  /* Emit debugging info.  */
  if (!processing_template_decl)
    (*debug_hooks->imported_module_or_decl) (namespace, context);
}