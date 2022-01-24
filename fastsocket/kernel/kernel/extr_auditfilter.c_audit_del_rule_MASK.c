#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct list_head {int dummy; } ;
struct audit_watch {int dummy; } ;
struct audit_tree {int dummy; } ;
struct TYPE_3__ {scalar_t__ listnr; int /*<<< orphan*/  list; struct audit_tree* tree; struct audit_watch* watch; } ;
struct audit_entry {int /*<<< orphan*/  rcu; TYPE_1__ rule; int /*<<< orphan*/  list; } ;

/* Variables and functions */
 scalar_t__ AUDIT_FILTER_TYPE ; 
 scalar_t__ AUDIT_FILTER_USER ; 
 int ENOENT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  audit_filter_mutex ; 
 struct audit_entry* FUNC1 (struct audit_entry*,struct list_head**) ; 
 int /*<<< orphan*/  audit_free_rule_rcu ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct audit_entry*) ; 
 int /*<<< orphan*/  audit_n_rules ; 
 int /*<<< orphan*/  FUNC4 (struct audit_tree*) ; 
 int /*<<< orphan*/  FUNC5 (struct audit_watch*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  audit_signals ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  inotify_list ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline int FUNC14(struct audit_entry *entry)
{
	struct audit_entry  *e;
	struct audit_watch *watch = entry->rule.watch;
	struct audit_tree *tree = entry->rule.tree;
	struct list_head *list;
	FUNC0(inotify_list);
	int ret = 0;
#ifdef CONFIG_AUDITSYSCALL
	int dont_count = 0;

	/* If either of these, don't count towards total */
	if (entry->rule.listnr == AUDIT_FILTER_USER ||
		entry->rule.listnr == AUDIT_FILTER_TYPE)
		dont_count = 1;
#endif

	FUNC12(&audit_filter_mutex);
	e = FUNC1(entry, &list);
	if (!e) {
		FUNC13(&audit_filter_mutex);
		ret = -ENOENT;
		goto out;
	}

	if (e->rule.watch)
		FUNC7(&e->rule, &inotify_list);

	if (e->rule.tree)
		FUNC6(&e->rule);

	FUNC10(&e->list);
	FUNC9(&e->rule.list);
	FUNC8(&e->rcu, audit_free_rule_rcu);

#ifdef CONFIG_AUDITSYSCALL
	if (!dont_count)
		audit_n_rules--;

	if (!audit_match_signal(entry))
		audit_signals--;
#endif
	FUNC13(&audit_filter_mutex);

	if (!FUNC11(&inotify_list))
		FUNC2(&inotify_list);

out:
	if (watch)
		FUNC5(watch); /* match initial get */
	if (tree)
		FUNC4(tree);	/* that's the temporary one */

	return ret;
}