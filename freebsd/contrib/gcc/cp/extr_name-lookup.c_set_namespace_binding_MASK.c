#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ tree ;
struct TYPE_4__ {scalar_t__ value; } ;
typedef  TYPE_1__ cxx_binding ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ NULL_TREE ; 
 scalar_t__ OVERLOAD ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  TV_NAME_LOOKUP ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ error_mark_node ; 
 scalar_t__ global_namespace ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

void
FUNC6 (tree name, tree scope, tree val)
{
  cxx_binding *b;

  FUNC5 (TV_NAME_LOOKUP);
  if (scope == NULL_TREE)
    scope = global_namespace;
  b = FUNC2 (FUNC0 (scope), name);
  if (!b->value || FUNC1 (val) == OVERLOAD || val == error_mark_node)
    b->value = val;
  else
    FUNC3 (b, val);
  FUNC4 (TV_NAME_LOOKUP);
}