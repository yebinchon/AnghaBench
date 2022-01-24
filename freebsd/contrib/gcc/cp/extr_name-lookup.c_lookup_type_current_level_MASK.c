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
struct cp_binding_level {scalar_t__ kind; struct cp_binding_level* level_chain; int /*<<< orphan*/  type_shadowed; } ;

/* Variables and functions */
 scalar_t__ NULL_TREE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  TV_NAME_LOOKUP ; 
 struct cp_binding_level* current_binding_level ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ global_type_node ; 
 scalar_t__ FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ sk_cleanup ; 
 scalar_t__ sk_namespace ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static tree
FUNC5 (tree name)
{
  tree t = NULL_TREE;

  FUNC4 (TV_NAME_LOOKUP);
  FUNC2 (current_binding_level->kind != sk_namespace);

  if (FUNC1 (name) != NULL_TREE
      && FUNC1 (name) != global_type_node)
    {
      struct cp_binding_level *b = current_binding_level;
      while (1)
	{
	  if (FUNC3 (name, b->type_shadowed))
	    FUNC0 (TV_NAME_LOOKUP,
				    FUNC1 (name));
	  if (b->kind == sk_cleanup)
	    b = b->level_chain;
	  else
	    break;
	}
    }

  FUNC0 (TV_NAME_LOOKUP, t);
}