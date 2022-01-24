#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_3__ {int /*<<< orphan*/  pages_stored; int /*<<< orphan*/  compr_size; int /*<<< orphan*/  good_compress; int /*<<< orphan*/  pages_expand; int /*<<< orphan*/  pages_zero; } ;
struct zram {TYPE_2__* table; TYPE_1__ stats; int /*<<< orphan*/  mem_pool; } ;
struct zobj_header {int dummy; } ;
struct page {int dummy; } ;
struct TYPE_4__ {int offset; struct page* page; } ;

/* Variables and functions */
 int /*<<< orphan*/  KM_USER0 ; 
 int PAGE_SIZE ; 
 int /*<<< orphan*/  ZRAM_UNCOMPRESSED ; 
 int /*<<< orphan*/  ZRAM_ZERO ; 
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 void* FUNC1 (struct page*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (void*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct page*,int) ; 
 int FUNC5 (void*) ; 
 int /*<<< orphan*/  FUNC6 (struct zram*,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct zram*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (struct zram*,size_t,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC10(struct zram *zram, size_t index)
{
	u32 clen;
	void *obj;

	struct page *page = zram->table[index].page;
	u32 offset = zram->table[index].offset;

	if (FUNC3(!page)) {
		/*
		 * No memory is allocated for zero filled pages.
		 * Simply clear zero page flag.
		 */
		if (FUNC9(zram, index, ZRAM_ZERO)) {
			FUNC6(zram, index, ZRAM_ZERO);
			FUNC8(&zram->stats.pages_zero);
		}
		return;
	}

	if (FUNC3(FUNC9(zram, index, ZRAM_UNCOMPRESSED))) {
		clen = PAGE_SIZE;
		FUNC0(page);
		FUNC6(zram, index, ZRAM_UNCOMPRESSED);
		FUNC8(&zram->stats.pages_expand);
		goto out;
	}

	obj = FUNC1(page, KM_USER0) + offset;
	clen = FUNC5(obj) - sizeof(struct zobj_header);
	FUNC2(obj, KM_USER0);

	FUNC4(zram->mem_pool, page, offset);
	if (clen <= PAGE_SIZE / 2)
		FUNC8(&zram->stats.good_compress);

out:
	FUNC7(zram, &zram->stats.compr_size, clen);
	FUNC8(&zram->stats.pages_stored);

	zram->table[index].page = NULL;
	zram->table[index].offset = 0;
}