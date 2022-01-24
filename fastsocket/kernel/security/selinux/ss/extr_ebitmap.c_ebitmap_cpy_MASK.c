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
struct ebitmap_node {struct ebitmap_node* next; int /*<<< orphan*/  maps; int /*<<< orphan*/  startbit; } ;
struct ebitmap {int /*<<< orphan*/  highbit; struct ebitmap_node* node; } ;

/* Variables and functions */
 int EBITMAP_SIZE ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (struct ebitmap*) ; 
 int /*<<< orphan*/  FUNC1 (struct ebitmap*) ; 
 struct ebitmap_node* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

int FUNC4(struct ebitmap *dst, struct ebitmap *src)
{
	struct ebitmap_node *n, *new, *prev;

	FUNC1(dst);
	n = src->node;
	prev = NULL;
	while (n) {
		new = FUNC2(sizeof(*new), GFP_ATOMIC);
		if (!new) {
			FUNC0(dst);
			return -ENOMEM;
		}
		new->startbit = n->startbit;
		FUNC3(new->maps, n->maps, EBITMAP_SIZE / 8);
		new->next = NULL;
		if (prev)
			prev->next = new;
		else
			dst->node = new;
		prev = new;
		n = n->next;
	}

	dst->highbit = src->highbit;
	return 0;
}