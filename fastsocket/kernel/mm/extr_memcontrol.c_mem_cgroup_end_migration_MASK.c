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
struct page_cgroup {int dummy; } ;
struct page {int dummy; } ;
struct mem_cgroup {int /*<<< orphan*/  css; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct page_cgroup*) ; 
 int /*<<< orphan*/  MEM_CGROUP_CHARGE_TYPE_FORCE ; 
 scalar_t__ FUNC1 (struct page*) ; 
 int /*<<< orphan*/  FUNC2 (struct page*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct page_cgroup*) ; 
 struct page_cgroup* FUNC6 (struct page*) ; 
 int /*<<< orphan*/  FUNC7 (struct page*) ; 
 int /*<<< orphan*/  FUNC8 (struct page_cgroup*) ; 

void FUNC9(struct mem_cgroup *mem,
	struct page *oldpage, struct page *newpage, bool migration_ok)
{
	struct page *used, *unused;
	struct page_cgroup *pc;

	if (!mem)
		return;
	/* blocks rmdir() */
	FUNC3(&mem->css);
	if (!migration_ok) {
		used = oldpage;
		unused = newpage;
	} else {
		used = newpage;
		unused = oldpage;
	}
	/*
	 * We disallowed uncharge of pages under migration because mapcount
	 * of the page goes down to zero, temporarly.
	 * Clear the flag and check the page should be charged.
	 */
	pc = FUNC6(oldpage);
	FUNC5(pc);
	FUNC0(pc);
	FUNC8(pc);

	if (unused != oldpage)
		pc = FUNC6(unused);
	FUNC2(unused, MEM_CGROUP_CHARGE_TYPE_FORCE);

	pc = FUNC6(used);
	/*
	 * If a page is a file cache, radix-tree replacement is very atomic
	 * and we can skip this check. When it was an Anon page, its mapcount
	 * goes down to 0. But because we added MIGRATION flage, it's not
	 * uncharged yet. There are several case but page->mapcount check
	 * and USED bit check in mem_cgroup_uncharge_page() will do enough
	 * check. (see prepare_charge() also)
	 */
	if (FUNC1(used))
		FUNC7(used);
	/*
	 * At migration, we may charge account against cgroup which has no
	 * tasks.
	 * So, rmdir()->pre_destroy() can be called while we do this charge.
	 * In that case, we need to call pre_destroy() again. check it here.
	 */
	FUNC4(&mem->css);
}