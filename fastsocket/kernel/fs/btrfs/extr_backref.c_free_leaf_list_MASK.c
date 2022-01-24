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
struct ulist_node {scalar_t__ aux; } ;
struct ulist_iterator {int dummy; } ;
struct ulist {int dummy; } ;
struct extent_inode_elem {struct extent_inode_elem* next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ulist_iterator*) ; 
 int /*<<< orphan*/  FUNC1 (struct extent_inode_elem*) ; 
 int /*<<< orphan*/  FUNC2 (struct ulist*) ; 
 struct ulist_node* FUNC3 (struct ulist*,struct ulist_iterator*) ; 

__attribute__((used)) static void FUNC4(struct ulist *blocks)
{
	struct ulist_node *node = NULL;
	struct extent_inode_elem *eie;
	struct extent_inode_elem *eie_next;
	struct ulist_iterator uiter;

	FUNC0(&uiter);
	while ((node = FUNC3(blocks, &uiter))) {
		if (!node->aux)
			continue;
		eie = (struct extent_inode_elem *)node->aux;
		for (; eie; eie = eie_next) {
			eie_next = eie->next;
			FUNC1(eie);
		}
		node->aux = 0;
	}

	FUNC2(blocks);
}