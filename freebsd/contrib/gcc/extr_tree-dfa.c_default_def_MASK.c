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
typedef  int /*<<< orphan*/  tree ;
struct int_tree_map {int /*<<< orphan*/  to; int /*<<< orphan*/  uid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NULL_TREE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  default_defs ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,struct int_tree_map*,int /*<<< orphan*/ ) ; 

tree 
FUNC4 (tree var)
{
  struct int_tree_map *h, in;
  FUNC2 (FUNC1 (var));
  in.uid = FUNC0 (var);
  h = (struct int_tree_map *) FUNC3 (default_defs, &in,
                                                   FUNC0 (var));
  if (h)
    return h->to;
  return NULL_TREE;
}