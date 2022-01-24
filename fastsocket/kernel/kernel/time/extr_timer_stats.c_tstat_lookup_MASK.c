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
struct entry {struct entry* next; int /*<<< orphan*/  comm; scalar_t__ count; } ;

/* Variables and functions */
 int /*<<< orphan*/  TASK_COMM_LEN ; 
 struct entry* FUNC0 () ; 
 scalar_t__ FUNC1 (struct entry*,struct entry*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  table_lock ; 
 struct entry** FUNC6 (struct entry*) ; 

__attribute__((used)) static struct entry *FUNC7(struct entry *entry, char *comm)
{
	struct entry **head, *curr, *prev;

	head = FUNC6(entry);
	curr = *head;

	/*
	 * The fastpath is when the entry is already hashed,
	 * we do this with the lookup lock held, but with the
	 * table lock not held:
	 */
	while (curr) {
		if (FUNC1(curr, entry))
			return curr;

		curr = curr->next;
	}
	/*
	 * Slowpath: allocate, set up and link a new hash entry:
	 */
	prev = NULL;
	curr = *head;

	FUNC4(&table_lock);
	/*
	 * Make sure we have not raced with another CPU:
	 */
	while (curr) {
		if (FUNC1(curr, entry))
			goto out_unlock;

		prev = curr;
		curr = curr->next;
	}

	curr = FUNC0();
	if (curr) {
		*curr = *entry;
		curr->count = 0;
		curr->next = NULL;
		FUNC2(curr->comm, comm, TASK_COMM_LEN);

		FUNC3(); /* Ensure that curr is initialized before insert */

		if (prev)
			prev->next = curr;
		else
			*head = curr;
	}
 out_unlock:
	FUNC5(&table_lock);

	return curr;
}