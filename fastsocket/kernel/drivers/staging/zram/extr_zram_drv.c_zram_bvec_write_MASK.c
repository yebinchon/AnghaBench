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
typedef  size_t u32 ;
struct TYPE_4__ {int /*<<< orphan*/  failed_writes; int /*<<< orphan*/  good_compress; int /*<<< orphan*/  pages_stored; int /*<<< orphan*/  compr_size; int /*<<< orphan*/  pages_expand; int /*<<< orphan*/  pages_zero; } ;
struct zram {unsigned char* compress_buffer; TYPE_2__ stats; TYPE_1__* table; int /*<<< orphan*/  mem_pool; int /*<<< orphan*/  compress_workmem; } ;
struct zobj_header {size_t table_idx; } ;
struct page {int dummy; } ;
struct bio_vec {int bv_offset; size_t bv_len; struct page* bv_page; } ;
struct TYPE_3__ {size_t offset; struct page* page; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int GFP_NOIO ; 
 int /*<<< orphan*/  KM_USER0 ; 
 int /*<<< orphan*/  KM_USER1 ; 
 int LZO_E_OK ; 
 int PAGE_SIZE ; 
 int /*<<< orphan*/  ZRAM_UNCOMPRESSED ; 
 int /*<<< orphan*/  ZRAM_ZERO ; 
 int __GFP_HIGHMEM ; 
 struct page* FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct bio_vec*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*) ; 
 unsigned char* FUNC3 (int,int /*<<< orphan*/ ) ; 
 unsigned char* FUNC4 (struct page*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (unsigned char*,int /*<<< orphan*/ ) ; 
 int FUNC6 (unsigned char*,int,unsigned char*,size_t*,int /*<<< orphan*/ ) ; 
 size_t max_zpage_size ; 
 int /*<<< orphan*/  FUNC7 (unsigned char*,unsigned char*,size_t) ; 
 scalar_t__ FUNC8 (unsigned char*) ; 
 int /*<<< orphan*/  FUNC9 (char*,int) ; 
 int /*<<< orphan*/  FUNC10 (char*,...) ; 
 scalar_t__ FUNC11 (int) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,size_t,struct page**,size_t*,int) ; 
 int /*<<< orphan*/  FUNC13 (struct zram*,size_t) ; 
 int FUNC14 (struct zram*,unsigned char*,size_t) ; 
 int /*<<< orphan*/  FUNC15 (struct zram*,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct zram*,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC17 (struct zram*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int FUNC19 (struct zram*,size_t,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC20(struct zram *zram, struct bio_vec *bvec, u32 index,
			   int offset)
{
	int ret;
	u32 store_offset;
	size_t clen;
	struct zobj_header *zheader;
	struct page *page, *page_store;
	unsigned char *user_mem, *cmem, *src, *uncmem = NULL;

	page = bvec->bv_page;
	src = zram->compress_buffer;

	if (FUNC1(bvec)) {
		/*
		 * This is a partial IO. We need to read the full page
		 * before to write the changes.
		 */
		uncmem = FUNC3(PAGE_SIZE, GFP_KERNEL);
		if (!uncmem) {
			FUNC10("Error allocating temp memory!\n");
			ret = -ENOMEM;
			goto out;
		}
		ret = FUNC14(zram, uncmem, index);
		if (ret) {
			FUNC2(uncmem);
			goto out;
		}
	}

	/*
	 * System overwrites unused sectors. Free memory associated
	 * with this sector now.
	 */
	if (zram->table[index].page ||
	    FUNC19(zram, index, ZRAM_ZERO))
		FUNC13(zram, index);

	user_mem = FUNC4(page, KM_USER0);

	if (FUNC1(bvec))
		FUNC7(uncmem + offset, user_mem + bvec->bv_offset,
		       bvec->bv_len);
	else
		uncmem = user_mem;

	if (FUNC8(uncmem)) {
		FUNC5(user_mem, KM_USER0);
		if (FUNC1(bvec))
			FUNC2(uncmem);
		FUNC18(&zram->stats.pages_zero);
		FUNC15(zram, index, ZRAM_ZERO);
		ret = 0;
		goto out;
	}

	ret = FUNC6(uncmem, PAGE_SIZE, src, &clen,
			       zram->compress_workmem);

	FUNC5(user_mem, KM_USER0);
	if (FUNC1(bvec))
			FUNC2(uncmem);

	if (FUNC11(ret != LZO_E_OK)) {
		FUNC9("Compression failed! err=%d\n", ret);
		goto out;
	}

	/*
	 * Page is incompressible. Store it as-is (uncompressed)
	 * since we do not want to return too many disk write
	 * errors which has side effect of hanging the system.
	 */
	if (FUNC11(clen > max_zpage_size)) {
		clen = PAGE_SIZE;
		page_store = FUNC0(GFP_NOIO | __GFP_HIGHMEM);
		if (FUNC11(!page_store)) {
			FUNC10("Error allocating memory for "
				"incompressible page: %u\n", index);
			ret = -ENOMEM;
			goto out;
		}

		store_offset = 0;
		FUNC15(zram, index, ZRAM_UNCOMPRESSED);
		FUNC18(&zram->stats.pages_expand);
		zram->table[index].page = page_store;
		src = FUNC4(page, KM_USER0);
		goto memstore;
	}

	if (FUNC12(zram->mem_pool, clen + sizeof(*zheader),
		      &zram->table[index].page, &store_offset,
		      GFP_NOIO | __GFP_HIGHMEM)) {
		FUNC10("Error allocating memory for compressed "
			"page: %u, size=%zu\n", index, clen);
		ret = -ENOMEM;
		goto out;
	}

memstore:
	zram->table[index].offset = store_offset;

	cmem = FUNC4(zram->table[index].page, KM_USER1) +
		zram->table[index].offset;

#if 0
	/* Back-reference needed for memory defragmentation */
	if (!zram_test_flag(zram, index, ZRAM_UNCOMPRESSED)) {
		zheader = (struct zobj_header *)cmem;
		zheader->table_idx = index;
		cmem += sizeof(*zheader);
	}
#endif

	FUNC7(cmem, src, clen);

	FUNC5(cmem, KM_USER1);
	if (FUNC11(FUNC19(zram, index, ZRAM_UNCOMPRESSED)))
		FUNC5(src, KM_USER0);

	/* Update stats */
	FUNC16(zram, &zram->stats.compr_size, clen);
	FUNC18(&zram->stats.pages_stored);
	if (clen <= PAGE_SIZE / 2)
		FUNC18(&zram->stats.good_compress);

	return 0;

out:
	if (ret)
		FUNC17(zram, &zram->stats.failed_writes);
	return ret;
}