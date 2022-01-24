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
struct reiserfs_journal_cnode {struct reiserfs_journal_cnode* next; struct reiserfs_journal_cnode* prev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct reiserfs_journal_cnode*,int /*<<< orphan*/ ,int) ; 
 struct reiserfs_journal_cnode* FUNC1 (int) ; 

__attribute__((used)) static struct reiserfs_journal_cnode *FUNC2(int num_cnodes)
{
	struct reiserfs_journal_cnode *head;
	int i;
	if (num_cnodes <= 0) {
		return NULL;
	}
	head = FUNC1(num_cnodes * sizeof(struct reiserfs_journal_cnode));
	if (!head) {
		return NULL;
	}
	FUNC0(head, 0, num_cnodes * sizeof(struct reiserfs_journal_cnode));
	head[0].prev = NULL;
	head[0].next = head + 1;
	for (i = 1; i < num_cnodes; i++) {
		head[i].prev = head + (i - 1);
		head[i].next = head + (i + 1);	/* if last one, overwrite it after the if */
	}
	head[num_cnodes - 1].next = NULL;
	return head;
}