#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ tree ;
typedef  TYPE_1__* splay_tree_node ;
typedef  int /*<<< orphan*/  splay_tree_key ;
struct TYPE_6__ {int /*<<< orphan*/  field_map; } ;
typedef  TYPE_2__ omp_context ;
struct TYPE_5__ {scalar_t__ value; } ;

/* Variables and functions */
 scalar_t__ NULL_TREE ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline tree
FUNC1 (tree var, omp_context *ctx)
{
  splay_tree_node n;
  n = FUNC0 (ctx->field_map, (splay_tree_key) var);
  return n ? (tree) n->value : NULL_TREE;
}