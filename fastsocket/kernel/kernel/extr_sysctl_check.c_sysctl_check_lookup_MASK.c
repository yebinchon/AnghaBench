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
struct nsproxy {int dummy; } ;
struct ctl_table_header {struct ctl_table* ctl_table; } ;
struct ctl_table {scalar_t__ ctl_name; struct ctl_table* child; scalar_t__ procname; } ;

/* Variables and functions */
 struct ctl_table_header* FUNC0 (struct nsproxy*,struct ctl_table_header*) ; 
 scalar_t__ FUNC1 (scalar_t__,scalar_t__) ; 
 int FUNC2 (struct ctl_table*) ; 
 int /*<<< orphan*/  FUNC3 (struct ctl_table_header*) ; 
 struct ctl_table* FUNC4 (struct ctl_table*,int) ; 

__attribute__((used)) static struct ctl_table *FUNC5(struct nsproxy *namespaces,
						struct ctl_table *table)
{
	struct ctl_table_header *head;
	struct ctl_table *ref, *test;
	int depth, cur_depth;

	depth = FUNC2(table);

	for (head = FUNC0(namespaces, NULL); head;
	     head = FUNC0(namespaces, head)) {
		cur_depth = depth;
		ref = head->ctl_table;
repeat:
		test = FUNC4(table, cur_depth);
		for (; ref->ctl_name || ref->procname; ref++) {
			int match = 0;
			if (cur_depth && !ref->child)
				continue;

			if (test->procname && ref->procname &&
			    (FUNC1(test->procname, ref->procname) == 0))
					match++;

			if (test->ctl_name && ref->ctl_name &&
			    (test->ctl_name == ref->ctl_name))
				match++;

			if (match) {
				if (cur_depth != 0) {
					cur_depth--;
					ref = ref->child;
					goto repeat;
				}
				goto out;
			}
		}
	}
	ref = NULL;
out:
	FUNC3(head);
	return ref;
}