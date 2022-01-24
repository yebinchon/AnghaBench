#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ tree ;
struct TYPE_5__ {struct eh_region* last_catch; struct eh_region* catch; } ;
struct TYPE_4__ {struct eh_region* next_catch; struct eh_region* prev_catch; scalar_t__ type_list; } ;
struct TYPE_6__ {TYPE_2__ try; TYPE_1__ catch; } ;
struct eh_region {TYPE_3__ u; int /*<<< orphan*/  outer; } ;

/* Variables and functions */
 int /*<<< orphan*/  ERT_CATCH ; 
 int /*<<< orphan*/  NULL_TREE ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ TREE_LIST ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct eh_region* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 

struct eh_region *
FUNC6 (struct eh_region *t, tree type_or_list)
{
  struct eh_region *c, *l;
  tree type_list, type_node;

  /* Ensure to always end up with a type list to normalize further
     processing, then register each type against the runtime types map.  */
  type_list = type_or_list;
  if (type_or_list)
    {
      if (FUNC1 (type_or_list) != TREE_LIST)
	type_list = FUNC5 (NULL_TREE, type_or_list, NULL_TREE);

      type_node = type_list;
      for (; type_node; type_node = FUNC0 (type_node))
	FUNC3 (FUNC2 (type_node));
    }

  c = FUNC4 (ERT_CATCH, t->outer);
  c->u.catch.type_list = type_list;
  l = t->u.try.last_catch;
  c->u.catch.prev_catch = l;
  if (l)
    l->u.catch.next_catch = c;
  else
    t->u.try.catch = c;
  t->u.try.last_catch = c;

  return c;
}