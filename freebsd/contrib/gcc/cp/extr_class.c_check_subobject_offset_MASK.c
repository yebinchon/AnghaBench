#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ tree ;
typedef  TYPE_1__* splay_tree_node ;
typedef  int /*<<< orphan*/  splay_tree_key ;
typedef  int /*<<< orphan*/  splay_tree ;
struct TYPE_3__ {scalar_t__ value; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5 (tree type, tree offset, splay_tree offsets)
{
  splay_tree_node n;
  tree t;

  if (!FUNC2 (type))
    return 0;

  /* Record the location of this empty object in OFFSETS.  */
  n = FUNC4 (offsets, (splay_tree_key) offset);
  if (!n)
    return 0;

  for (t = (tree) n->value; t; t = FUNC0 (t))
    if (FUNC3 (FUNC1 (t), type))
      return 1;

  return 0;
}