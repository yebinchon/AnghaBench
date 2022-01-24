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
struct leaf {int /*<<< orphan*/  list; int /*<<< orphan*/  parent; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  T_LEAF ; 
 struct leaf* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  trie_leaf_kmem ; 

__attribute__((used)) static struct leaf *FUNC2(void)
{
	struct leaf *l = FUNC1(trie_leaf_kmem, GFP_KERNEL);
	if (l) {
		l->parent = T_LEAF;
		FUNC0(&l->list);
	}
	return l;
}