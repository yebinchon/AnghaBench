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
struct TYPE_3__ {int /*<<< orphan*/  val; } ;
typedef  TYPE_1__ swp_entry_t ;
struct page_cgroup {int dummy; } ;
struct page {int dummy; } ;
struct mem_cgroup {int /*<<< orphan*/  css; int /*<<< orphan*/  memsw; } ;
typedef  enum charge_type { ____Placeholder_charge_type } charge_type ;

/* Variables and functions */
 int /*<<< orphan*/  PAGE_SIZE ; 
 scalar_t__ FUNC0 (struct page*) ; 
 int /*<<< orphan*/  FUNC1 (struct mem_cgroup*,struct page_cgroup*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ do_swap_account ; 
 struct page_cgroup* FUNC4 (struct page*) ; 
 scalar_t__ FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (struct mem_cgroup*) ; 
 struct mem_cgroup* FUNC7 (unsigned short) ; 
 int /*<<< orphan*/  FUNC8 (struct page*) ; 
 int /*<<< orphan*/  FUNC9 (struct page*) ; 
 int /*<<< orphan*/  FUNC10 (struct mem_cgroup*) ; 
 int /*<<< orphan*/  FUNC11 (struct mem_cgroup*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct page*) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 unsigned short FUNC16 (TYPE_1__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC17(struct page *page, struct mem_cgroup *ptr,
					enum charge_type ctype)
{
	struct page_cgroup *pc;

	if (FUNC5())
		return;
	if (!ptr)
		return;
	FUNC2(&ptr->css);
	pc = FUNC4(page);
	FUNC9(page);
	FUNC1(ptr, pc, ctype, PAGE_SIZE);
	FUNC8(page);
	/*
	 * Now swap is on-memory. This means this page may be
	 * counted both as mem and swap....double count.
	 * Fix it by uncharging from memsw. Basically, this SwapCache is stable
	 * under lock_page(). But in do_swap_page()::memory.c, reuse_swap_page()
	 * may call delete_from_swap_cache() before reach here.
	 */
	if (do_swap_account && FUNC0(page)) {
		swp_entry_t ent = {.val = FUNC12(page)};
		unsigned short id;
		struct mem_cgroup *memcg;

		id = FUNC16(ent, 0);
		FUNC13();
		memcg = FUNC7(id);
		if (memcg) {
			/*
			 * This recorded memcg can be obsolete one. So, avoid
			 * calling css_tryget
			 */
			if (!FUNC6(memcg))
				FUNC15(&memcg->memsw, PAGE_SIZE);
			FUNC11(memcg, false);
			FUNC10(memcg);
		}
		FUNC14();
	}
	/*
	 * At swapin, we may charge account against cgroup which has no tasks.
	 * So, rmdir()->pre_destroy() can be called while we do this charge.
	 * In that case, we need to call pre_destroy() again. check it here.
	 */
	FUNC3(&ptr->css);
}