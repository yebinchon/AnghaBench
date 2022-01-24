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
typedef  scalar_t__ splay_tree_value ;
typedef  TYPE_1__* splay_tree_node ;
typedef  int /*<<< orphan*/  splay_tree_key ;
typedef  int /*<<< orphan*/  splay_tree ;
struct TYPE_4__ {scalar_t__ value; } ;

/* Variables and functions */
 scalar_t__ NULL_TREE ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (scalar_t__,scalar_t__,scalar_t__) ; 

__attribute__((used)) static int
FUNC4 (tree type, tree offset, splay_tree offsets)
{
  splay_tree_node n;

  if (!FUNC0 (type))
    return 0;

  /* Record the location of this empty object in OFFSETS.  */
  n = FUNC2 (offsets, (splay_tree_key) offset);
  if (!n)
    n = FUNC1 (offsets,
			   (splay_tree_key) offset,
			   (splay_tree_value) NULL_TREE);
  n->value = ((splay_tree_value)
	      FUNC3 (NULL_TREE,
			 type,
			 (tree) n->value));

  return 0;
}