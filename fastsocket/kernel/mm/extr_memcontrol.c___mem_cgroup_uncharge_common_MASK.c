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
struct page_cgroup {struct mem_cgroup* mem_cgroup; } ;
struct page {int /*<<< orphan*/  mapping; } ;
struct mem_cgroup {int dummy; } ;
typedef  enum charge_type { ____Placeholder_charge_type } charge_type ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct page_cgroup*) ; 
#define  MEM_CGROUP_CHARGE_TYPE_DROP 130 
#define  MEM_CGROUP_CHARGE_TYPE_MAPPED 129 
#define  MEM_CGROUP_CHARGE_TYPE_SWAPOUT 128 
 int PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 int /*<<< orphan*/  FUNC2 (struct page_cgroup*) ; 
 int /*<<< orphan*/  FUNC3 (struct page_cgroup*) ; 
 scalar_t__ FUNC4 (struct page*) ; 
 scalar_t__ FUNC5 (struct page*) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (struct mem_cgroup*,int,int) ; 
 int FUNC8 (struct page*) ; 
 scalar_t__ do_swap_account ; 
 int /*<<< orphan*/  FUNC9 (struct page_cgroup*) ; 
 struct page_cgroup* FUNC10 (struct page*) ; 
 int /*<<< orphan*/  FUNC11 (struct mem_cgroup*,struct page_cgroup*,int) ; 
 scalar_t__ FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (struct mem_cgroup*) ; 
 int /*<<< orphan*/  FUNC14 (struct mem_cgroup*) ; 
 scalar_t__ FUNC15 (struct mem_cgroup*) ; 
 int /*<<< orphan*/  FUNC16 (struct mem_cgroup*,int) ; 
 int /*<<< orphan*/  FUNC17 (struct mem_cgroup*,struct page*) ; 
 int /*<<< orphan*/  FUNC18 (struct page*) ; 
 int /*<<< orphan*/  FUNC19 (struct page*) ; 
 scalar_t__ FUNC20 (int) ; 
 int /*<<< orphan*/  FUNC21 (struct page_cgroup*) ; 

__attribute__((used)) static struct mem_cgroup *
FUNC22(struct page *page, enum charge_type ctype)
{
	struct page_cgroup *pc;
	struct mem_cgroup *mem = NULL;
	int page_size = PAGE_SIZE;

	if (FUNC12())
		return NULL;

	if (FUNC4(page))
		return NULL;

	if (FUNC5(page)) {
		page_size <<= FUNC8(page);
		FUNC6(!FUNC5(page));
	}

	/*
	 * Check if our page_cgroup is valid
	 */
	pc = FUNC10(page);
	if (FUNC20(!pc || !FUNC3(pc)))
		return NULL;

	FUNC9(pc);

	mem = pc->mem_cgroup;

	if (!FUNC3(pc))
		goto unlock_out;

	switch (ctype) {
	case MEM_CGROUP_CHARGE_TYPE_MAPPED:
	case MEM_CGROUP_CHARGE_TYPE_DROP:
		/* See mem_cgroup_prepare_migration() */
		if (FUNC19(page) || FUNC2(pc))
			goto unlock_out;
		break;
	case MEM_CGROUP_CHARGE_TYPE_SWAPOUT:
		if (!FUNC1(page)) {	/* Shared memory */
			if (page->mapping && !FUNC18(page))
				goto unlock_out;
		} else if (FUNC19(page)) /* Anon */
				goto unlock_out;
		break;
	default:
		break;
	}

	FUNC11(mem, pc, -page_size);

	FUNC0(pc);
	/*
	 * pc->mem_cgroup is not cleared here. It will be accessed when it's
	 * freed from LRU. This is safe because uncharged page is expected not
	 * to be reused (freed soon). Exception is SwapCache, it's handled by
	 * special functions.
	 */
	FUNC21(pc);
	/*
	 * even after unlock, we have memcg->res.usage here and this memcg
	 * will never be freed.
	 */
	if (FUNC15(mem))
		FUNC17(mem, page);
	if (do_swap_account && ctype == MEM_CGROUP_CHARGE_TYPE_SWAPOUT) {
		FUNC16(mem, true);
		FUNC13(mem);
	}
	if (!FUNC14(mem))
		FUNC7(mem, ctype, page_size);

	return mem;

unlock_out:
	FUNC21(pc);
	return NULL;
}