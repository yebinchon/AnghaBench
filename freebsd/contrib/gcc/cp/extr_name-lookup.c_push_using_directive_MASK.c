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
struct TYPE_2__ {scalar_t__ using_directives; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ NULL_TREE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  TV_NAME_LOOKUP ; 
 TYPE_1__* current_binding_level ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC6 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (scalar_t__,scalar_t__,scalar_t__) ; 

__attribute__((used)) static tree
FUNC9 (tree used)
{
  tree ud = current_binding_level->using_directives;
  tree iter, ancestor;

  FUNC7 (TV_NAME_LOOKUP);
  /* Check if we already have this.  */
  if (FUNC6 (used, ud) != NULL_TREE)
    FUNC1 (TV_NAME_LOOKUP, NULL_TREE);

  ancestor = FUNC5 (FUNC4 (), used);
  ud = current_binding_level->using_directives;
  ud = FUNC8 (used, ancestor, ud);
  current_binding_level->using_directives = ud;

  /* Recursively add all namespaces used.  */
  for (iter = FUNC0 (used); iter; iter = FUNC2 (iter))
    FUNC9 (FUNC3 (iter));

  FUNC1 (TV_NAME_LOOKUP, ud);
}