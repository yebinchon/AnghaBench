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
 scalar_t__ BOUND_TEMPLATE_TEMPLATE_PARM ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 scalar_t__ NAMESPACE_DECL ; 
 scalar_t__ NULL_TREE ; 
 scalar_t__ TEMPLATE_TYPE_PARM ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 scalar_t__ error_mark_node ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 

void
FUNC6 (tree type)
{
  tree context;

  /* A namespace might be passed in error cases, like A::B:C.  */
  if (type == NULL_TREE
      || type == error_mark_node
      || FUNC3 (type) == NAMESPACE_DECL
      || ! FUNC2 (type)
      || FUNC3 (type) == TEMPLATE_TYPE_PARM
      || FUNC3 (type) == BOUND_TEMPLATE_TEMPLATE_PARM)
    return;

  context = FUNC1 (FUNC4 (type));

  if (context && FUNC0 (context))
    FUNC6 (context);
  FUNC5 (type);
}