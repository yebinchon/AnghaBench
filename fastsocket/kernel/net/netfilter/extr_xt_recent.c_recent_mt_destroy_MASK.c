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
struct xt_recent_mtinfo {int /*<<< orphan*/  name; } ;
struct xt_mtdtor_param {struct xt_recent_mtinfo* matchinfo; } ;
struct recent_table {scalar_t__ refcnt; int /*<<< orphan*/  name; int /*<<< orphan*/  list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct recent_table*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  proc_old_dir ; 
 int /*<<< orphan*/  recent_lock ; 
 int /*<<< orphan*/  recent_mutex ; 
 int /*<<< orphan*/  recent_proc_dir ; 
 int /*<<< orphan*/  FUNC4 (struct recent_table*) ; 
 struct recent_table* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9(const struct xt_mtdtor_param *par)
{
	const struct xt_recent_mtinfo *info = par->matchinfo;
	struct recent_table *t;

	FUNC2(&recent_mutex);
	t = FUNC5(info->name);
	if (--t->refcnt == 0) {
		FUNC7(&recent_lock);
		FUNC1(&t->list);
		FUNC8(&recent_lock);
#ifdef CONFIG_PROC_FS
#ifdef CONFIG_NETFILTER_XT_MATCH_RECENT_PROC_COMPAT
		remove_proc_entry(t->name, proc_old_dir);
#endif
		remove_proc_entry(t->name, recent_proc_dir);
#endif
		FUNC4(t);
		FUNC0(t);
	}
	FUNC3(&recent_mutex);
}