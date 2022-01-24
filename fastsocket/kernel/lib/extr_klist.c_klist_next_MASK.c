#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {TYPE_3__* next; } ;
struct klist_node {TYPE_1__ n_node; int /*<<< orphan*/  n_ref; } ;
struct klist_iter {struct klist_node* i_cur; TYPE_2__* i_klist; } ;
struct TYPE_6__ {struct TYPE_6__* next; } ;
struct TYPE_5__ {void (* put ) (struct klist_node*) ;int /*<<< orphan*/  k_lock; TYPE_3__ k_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct klist_node*) ; 
 int /*<<< orphan*/  FUNC1 (struct klist_node*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct klist_node* FUNC6 (TYPE_3__*) ; 

struct klist_node *FUNC7(struct klist_iter *i)
{
	void (*put)(struct klist_node *) = i->i_klist->put;
	struct klist_node *last = i->i_cur;
	struct klist_node *next;

	FUNC4(&i->i_klist->k_lock);

	if (last) {
		next = FUNC6(last->n_node.next);
		if (!FUNC0(last))
			put = NULL;
	} else
		next = FUNC6(i->i_klist->k_list.next);

	i->i_cur = NULL;
	while (next != FUNC6(&i->i_klist->k_list)) {
		if (FUNC3(!FUNC1(next))) {
			FUNC2(&next->n_ref);
			i->i_cur = next;
			break;
		}
		next = FUNC6(next->n_node.next);
	}

	FUNC5(&i->i_klist->k_lock);

	if (put && last)
		put(last);
	return i->i_cur;
}