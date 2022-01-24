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
typedef  int /*<<< orphan*/  u32 ;
struct list_head {int dummy; } ;
struct audit_watch {int dummy; } ;
struct audit_tree {int dummy; } ;
struct TYPE_3__ {size_t listnr; unsigned long long prio; int flags; int /*<<< orphan*/  list; struct audit_watch* watch; struct audit_tree* tree; } ;
struct audit_entry {int /*<<< orphan*/  list; TYPE_1__ rule; } ;

/* Variables and functions */
 size_t AUDIT_FILTER_EXIT ; 
 int AUDIT_FILTER_PREPEND ; 
 size_t AUDIT_FILTER_TYPE ; 
 size_t AUDIT_FILTER_USER ; 
 int EEXIST ; 
 int FUNC0 (TYPE_1__*) ; 
 int FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  audit_filter_mutex ; 
 struct audit_entry* FUNC2 (struct audit_entry*,struct list_head**) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 struct list_head* audit_inode_hash ; 
 int /*<<< orphan*/  FUNC4 (struct audit_entry*) ; 
 int /*<<< orphan*/  audit_n_rules ; 
 int /*<<< orphan*/  FUNC5 (struct audit_tree*) ; 
 int /*<<< orphan*/  FUNC6 (struct audit_watch*) ; 
 int /*<<< orphan*/ * audit_rules_list ; 
 int /*<<< orphan*/  audit_signals ; 
 scalar_t__ FUNC7 (struct audit_watch*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,struct list_head*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,struct list_head*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 unsigned long long prio_high ; 
 unsigned long long prio_low ; 

__attribute__((used)) static inline int FUNC14(struct audit_entry *entry)
{
	struct audit_entry *e;
	struct audit_watch *watch = entry->rule.watch;
	struct audit_tree *tree = entry->rule.tree;
	struct list_head *list;
	int h, err;
#ifdef CONFIG_AUDITSYSCALL
	int dont_count = 0;

	/* If either of these, don't count towards total */
	if (entry->rule.listnr == AUDIT_FILTER_USER ||
		entry->rule.listnr == AUDIT_FILTER_TYPE)
		dont_count = 1;
#endif

	FUNC12(&audit_filter_mutex);
	e = FUNC2(entry, &list);
	if (e) {
		FUNC13(&audit_filter_mutex);
		err = -EEXIST;
		/* normally audit_add_tree_rule() will free it on failure */
		if (tree)
			FUNC5(tree);
		goto error;
	}

	if (watch) {
		/* audit_filter_mutex is dropped and re-taken during this call */
		err = FUNC1(&entry->rule);
		if (err) {
			FUNC13(&audit_filter_mutex);
			goto error;
		}
		/* entry->rule.watch may have changed during audit_add_watch() */
		watch = entry->rule.watch;
		h = FUNC3((u32)FUNC7(watch));
		list = &audit_inode_hash[h];
	}
	if (tree) {
		err = FUNC0(&entry->rule);
		if (err) {
			FUNC13(&audit_filter_mutex);
			goto error;
		}
	}

	entry->rule.prio = ~0ULL;
	if (entry->rule.listnr == AUDIT_FILTER_EXIT) {
		if (entry->rule.flags & AUDIT_FILTER_PREPEND)
			entry->rule.prio = ++prio_high;
		else
			entry->rule.prio = --prio_low;
	}

	if (entry->rule.flags & AUDIT_FILTER_PREPEND) {
		FUNC8(&entry->rule.list,
			 &audit_rules_list[entry->rule.listnr]);
		FUNC9(&entry->list, list);
		entry->rule.flags &= ~AUDIT_FILTER_PREPEND;
	} else {
		FUNC10(&entry->rule.list,
			      &audit_rules_list[entry->rule.listnr]);
		FUNC11(&entry->list, list);
	}
#ifdef CONFIG_AUDITSYSCALL
	if (!dont_count)
		audit_n_rules++;

	if (!audit_match_signal(entry))
		audit_signals++;
#endif
	FUNC13(&audit_filter_mutex);

 	return 0;

error:
	if (watch)
		FUNC6(watch); /* tmp watch, matches initial get */
	return err;
}