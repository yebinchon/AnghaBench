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
struct tree_map {int /*<<< orphan*/  to; int /*<<< orphan*/  hash; int /*<<< orphan*/  from; } ;
typedef  int /*<<< orphan*/  htab_t ;

/* Variables and functions */
 int /*<<< orphan*/  NO_INSERT ; 
 int /*<<< orphan*/  NULL_TREE ; 
 void** FUNC0 (int /*<<< orphan*/ ,struct tree_map*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline tree
FUNC2 (htab_t ref_map, tree key)
{
  struct tree_map to_find;
  struct tree_map *found;
  void **slot = NULL;

  to_find.from = key;
  to_find.hash = FUNC1 (key);
  slot = FUNC0 (ref_map, &to_find, NO_INSERT);

  if (!slot)
    return NULL_TREE;

  found = (struct tree_map *) *slot;
  return found->to;
}