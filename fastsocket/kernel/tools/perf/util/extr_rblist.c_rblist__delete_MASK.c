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
struct rblist {int /*<<< orphan*/  entries; } ;
struct rb_node {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct rblist*) ; 
 struct rb_node* FUNC1 (int /*<<< orphan*/ *) ; 
 struct rb_node* FUNC2 (struct rb_node*) ; 
 int /*<<< orphan*/  FUNC3 (struct rblist*,struct rb_node*) ; 

void FUNC4(struct rblist *rblist)
{
	if (rblist != NULL) {
		struct rb_node *pos, *next = FUNC1(&rblist->entries);

		while (next) {
			pos = next;
			next = FUNC2(pos);
			FUNC3(rblist, pos);
		}
		FUNC0(rblist);
	}
}