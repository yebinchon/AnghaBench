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
struct tree_map {int /*<<< orphan*/  from; int /*<<< orphan*/  hash; int /*<<< orphan*/  to; } ;
typedef  int /*<<< orphan*/  htab_t ;
typedef  int /*<<< orphan*/  alloc_pool ;

/* Variables and functions */
 int /*<<< orphan*/  INSERT ; 
 int /*<<< orphan*/  NULL_TREE ; 
 void** FUNC0 (int /*<<< orphan*/ ,struct tree_map*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct tree_map* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3 (htab_t ht, tree t, alloc_pool references_pool)
{
  void **slot;
  struct tree_map *tp = FUNC2 (references_pool);

  tp->from = t;
  tp->to = NULL_TREE;
  tp->hash = FUNC1(tp->from);

  slot = FUNC0 (ht, tp, INSERT);
  *slot = (void *) tp;
}