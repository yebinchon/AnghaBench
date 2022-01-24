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
typedef  void* tree ;

/* Variables and functions */
 int /*<<< orphan*/  INSERT ; 
 int /*<<< orphan*/ * FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  htab_eq_pointer ; 
 void** FUNC1 (int /*<<< orphan*/ *,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  htab_hash_pointer ; 
 int /*<<< orphan*/ * marked_trees ; 

tree
FUNC2 (tree t)
{
  void **slot;

  if (marked_trees == NULL)
    marked_trees = FUNC0 (31, htab_hash_pointer, htab_eq_pointer, NULL);

  slot = FUNC1 (marked_trees, t, INSERT);
  *slot = t;
  return t;
}