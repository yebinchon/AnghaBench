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
typedef  int u64 ;
struct page {int flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  KPF_ACTIVE ; 
 int KPF_ANON ; 
 int /*<<< orphan*/  KPF_ARCH ; 
 int /*<<< orphan*/  KPF_BUDDY ; 
 int KPF_COMPOUND_HEAD ; 
 int KPF_COMPOUND_TAIL ; 
 int /*<<< orphan*/  KPF_DIRTY ; 
 int /*<<< orphan*/  KPF_ERROR ; 
 int KPF_HUGE ; 
 int /*<<< orphan*/  KPF_HWPOISON ; 
 int KPF_KSM ; 
 int /*<<< orphan*/  KPF_LOCKED ; 
 int /*<<< orphan*/  KPF_LRU ; 
 int /*<<< orphan*/  KPF_MAPPEDTODISK ; 
 int /*<<< orphan*/  KPF_MLOCKED ; 
 int KPF_MMAP ; 
 int KPF_NOPAGE ; 
 int /*<<< orphan*/  KPF_OWNER_PRIVATE ; 
 int /*<<< orphan*/  KPF_PRIVATE ; 
 int /*<<< orphan*/  KPF_PRIVATE_2 ; 
 int /*<<< orphan*/  KPF_RECLAIM ; 
 int /*<<< orphan*/  KPF_REFERENCED ; 
 int /*<<< orphan*/  KPF_RESERVED ; 
 int /*<<< orphan*/  KPF_SLAB ; 
 int /*<<< orphan*/  KPF_SWAPBACKED ; 
 int /*<<< orphan*/  KPF_SWAPCACHE ; 
 int /*<<< orphan*/  KPF_UNCACHED ; 
 int /*<<< orphan*/  KPF_UNEVICTABLE ; 
 int /*<<< orphan*/  KPF_UPTODATE ; 
 int /*<<< orphan*/  KPF_WRITEBACK ; 
 int /*<<< orphan*/  PG_active ; 
 int /*<<< orphan*/  PG_arch_1 ; 
 int /*<<< orphan*/  PG_buddy ; 
 int /*<<< orphan*/  PG_dirty ; 
 int /*<<< orphan*/  PG_error ; 
 int /*<<< orphan*/  PG_hwpoison ; 
 int /*<<< orphan*/  PG_locked ; 
 int /*<<< orphan*/  PG_lru ; 
 int /*<<< orphan*/  PG_mappedtodisk ; 
 int /*<<< orphan*/  PG_mlocked ; 
 int /*<<< orphan*/  PG_owner_priv_1 ; 
 int /*<<< orphan*/  PG_private ; 
 int /*<<< orphan*/  PG_private_2 ; 
 int /*<<< orphan*/  PG_reclaim ; 
 int /*<<< orphan*/  PG_referenced ; 
 int /*<<< orphan*/  PG_reserved ; 
 int /*<<< orphan*/  PG_slab ; 
 int /*<<< orphan*/  PG_swapbacked ; 
 int /*<<< orphan*/  PG_swapcache ; 
 int /*<<< orphan*/  PG_uncached ; 
 int /*<<< orphan*/  PG_unevictable ; 
 int /*<<< orphan*/  PG_uptodate ; 
 int /*<<< orphan*/  PG_writeback ; 
 scalar_t__ FUNC0 (struct page*) ; 
 scalar_t__ FUNC1 (struct page*) ; 
 scalar_t__ FUNC2 (struct page*) ; 
 scalar_t__ FUNC3 (struct page*) ; 
 int /*<<< orphan*/  FUNC4 (struct page*) ; 
 scalar_t__ FUNC5 (struct page*) ; 
 int FUNC6 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct page*) ; 

u64 FUNC8(struct page *page)
{
	u64 k;
	u64 u;

	/*
	 * pseudo flag: KPF_NOPAGE
	 * it differentiates a memory hole from a page with no flags
	 */
	if (!page)
		return 1 << KPF_NOPAGE;

	k = page->flags;
	u = 0;

	/*
	 * pseudo flags for the well known (anonymous) memory mapped pages
	 *
	 * Note that page->_mapcount is overloaded in SLOB/SLUB/SLQB, so the
	 * simple test in page_mapped() is not enough.
	 */
	if (!FUNC4(page) && FUNC7(page))
		u |= 1 << KPF_MMAP;
	if (FUNC0(page))
		u |= 1 << KPF_ANON;
	if (FUNC3(page))
		u |= 1 << KPF_KSM;

	/*
	 * compound pages: export both head/tail info
	 * they together define a compound page's start/end pos and order
	 */
	if (FUNC1(page))
		u |= 1 << KPF_COMPOUND_HEAD;
	if (FUNC5(page))
		u |= 1 << KPF_COMPOUND_TAIL;
	if (FUNC2(page))
		u |= 1 << KPF_HUGE;

	u |= FUNC6(k, KPF_LOCKED,	PG_locked);

	/*
	 * Caveats on high order pages:
	 * PG_buddy will only be set on the head page; SLUB/SLQB do the same
	 * for PG_slab; SLOB won't set PG_slab at all on compound pages.
	 */
	u |= FUNC6(k, KPF_SLAB,		PG_slab);
	u |= FUNC6(k, KPF_BUDDY,		PG_buddy);

	u |= FUNC6(k, KPF_ERROR,		PG_error);
	u |= FUNC6(k, KPF_DIRTY,		PG_dirty);
	u |= FUNC6(k, KPF_UPTODATE,	PG_uptodate);
	u |= FUNC6(k, KPF_WRITEBACK,	PG_writeback);

	u |= FUNC6(k, KPF_LRU,		PG_lru);
	u |= FUNC6(k, KPF_REFERENCED,	PG_referenced);
	u |= FUNC6(k, KPF_ACTIVE,	PG_active);
	u |= FUNC6(k, KPF_RECLAIM,	PG_reclaim);

	u |= FUNC6(k, KPF_SWAPCACHE,	PG_swapcache);
	u |= FUNC6(k, KPF_SWAPBACKED,	PG_swapbacked);

	u |= FUNC6(k, KPF_UNEVICTABLE,	PG_unevictable);
	u |= FUNC6(k, KPF_MLOCKED,	PG_mlocked);

#ifdef CONFIG_MEMORY_FAILURE
	u |= kpf_copy_bit(k, KPF_HWPOISON,	PG_hwpoison);
#endif

#ifdef CONFIG_IA64_UNCACHED_ALLOCATOR
	u |= kpf_copy_bit(k, KPF_UNCACHED,	PG_uncached);
#endif

	u |= FUNC6(k, KPF_RESERVED,	PG_reserved);
	u |= FUNC6(k, KPF_MAPPEDTODISK,	PG_mappedtodisk);
	u |= FUNC6(k, KPF_PRIVATE,	PG_private);
	u |= FUNC6(k, KPF_PRIVATE_2,	PG_private_2);
	u |= FUNC6(k, KPF_OWNER_PRIVATE,	PG_owner_priv_1);
	u |= FUNC6(k, KPF_ARCH,		PG_arch_1);

	return u;
}