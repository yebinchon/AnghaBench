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
struct page {int dummy; } ;
struct mem_cgroup {int /*<<< orphan*/  css; } ;
typedef  enum charge_type { ____Placeholder_charge_type } charge_type ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct page_cgroup*) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int MEM_CGROUP_CHARGE_TYPE_CACHE ; 
 int MEM_CGROUP_CHARGE_TYPE_MAPPED ; 
 int MEM_CGROUP_CHARGE_TYPE_SHMEM ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 scalar_t__ FUNC1 (struct page*) ; 
 scalar_t__ FUNC2 (struct page_cgroup*) ; 
 int /*<<< orphan*/  FUNC3 (struct page_cgroup*) ; 
 int /*<<< orphan*/  FUNC4 (struct mem_cgroup*,struct page_cgroup*,int,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct mem_cgroup**,int,struct page*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct page_cgroup*) ; 
 struct page_cgroup* FUNC9 (struct page*) ; 
 scalar_t__ FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (struct page*) ; 
 scalar_t__ FUNC12 (struct page*) ; 
 int /*<<< orphan*/  FUNC13 (struct page_cgroup*) ; 

int FUNC14(struct page *page,
	struct page *newpage, struct mem_cgroup **ptr)
{
	struct page_cgroup *pc;
	struct mem_cgroup *mem = NULL;
	enum charge_type ctype;
	int ret = 0;

	if (FUNC10())
		return 0;

	pc = FUNC9(page);
	FUNC8(pc);
	if (FUNC2(pc)) {
		mem = pc->mem_cgroup;
		FUNC6(&mem->css);
		/*
		 * At migrating an anonymous page, its mapcount goes down
		 * to 0 and uncharge() will be called. But, even if it's fully
		 * unmapped, migration may fail and this page has to be
		 * charged again. We set MIGRATION flag here and delay uncharge
		 * until end_migration() is called
		 *
		 * Corner Case Thinking
		 * A)
		 * When the old page was mapped as Anon and it's unmap-and-freed
		 * while migration was ongoing.
		 * If unmap finds the old page, uncharge() of it will be delayed
		 * until end_migration(). If unmap finds a new page, it's
		 * uncharged when it make mapcount to be 1->0. If unmap code
		 * finds swap_migration_entry, the new page will not be mapped
		 * and end_migration() will find it(mapcount==0).
		 *
		 * B)
		 * When the old page was mapped but migraion fails, the kernel
		 * remaps it. A charge for it is kept by MIGRATION flag even
		 * if mapcount goes down to 0. We can do remap successfully
		 * without charging it again.
		 *
		 * C)
		 * The "old" page is under lock_page() until the end of
		 * migration, so, the old page itself will not be swapped-out.
		 * If the new page is swapped out before end_migraton, our
		 * hook to usual swap-out path will catch the event.
		 */
		if (FUNC1(page))
			FUNC3(pc);
	}
	FUNC13(pc);
	/*
	 * If the page is not charged at this point,
	 * we return here.
	 */
	if (!mem)
		return 0;

	*ptr = mem;
	ret = FUNC5(NULL, GFP_KERNEL, ptr, false,
							page, PAGE_SIZE);
	FUNC7(&mem->css);/* drop extra refcnt */
	if (ret || *ptr == NULL) {
		if (FUNC1(page)) {
			FUNC8(pc);
			FUNC0(pc);
			FUNC13(pc);
			/*
			 * The old page may be fully unmapped while we kept it.
			 */
			FUNC11(page);
		}
		return -ENOMEM;
	}
	/*
	 * We charge new page before it's used/mapped. So, even if unlock_page()
	 * is called before end_migration, we can catch all events on this new
	 * page. In the case new page is migrated but not remapped, new page's
	 * mapcount will be finally 0 and we call uncharge in end_migration().
	 */
	pc = FUNC9(newpage);
	if (FUNC1(page))
		ctype = MEM_CGROUP_CHARGE_TYPE_MAPPED;
	else if (FUNC12(page))
		ctype = MEM_CGROUP_CHARGE_TYPE_CACHE;
	else
		ctype = MEM_CGROUP_CHARGE_TYPE_SHMEM;
	FUNC4(mem, pc, ctype, PAGE_SIZE);
	return ret;
}