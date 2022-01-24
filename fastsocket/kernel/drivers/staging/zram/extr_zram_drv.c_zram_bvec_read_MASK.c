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
typedef  int /*<<< orphan*/  ulong ;
typedef  size_t u32 ;
struct TYPE_4__ {int /*<<< orphan*/  failed_reads; } ;
struct zram {TYPE_2__ stats; TYPE_1__* table; } ;
struct zobj_header {int dummy; } ;
struct page {int dummy; } ;
struct bio_vec {int bv_offset; int /*<<< orphan*/  bv_len; struct page* bv_page; } ;
struct bio {int /*<<< orphan*/  bi_size; scalar_t__ bi_sector; } ;
struct TYPE_3__ {int offset; struct page* page; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  KM_USER0 ; 
 int /*<<< orphan*/  KM_USER1 ; 
 int LZO_E_OK ; 
 size_t PAGE_SIZE ; 
 int /*<<< orphan*/  ZRAM_UNCOMPRESSED ; 
 int /*<<< orphan*/  ZRAM_ZERO ; 
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 int /*<<< orphan*/  FUNC1 (struct zram*,struct bio_vec*,size_t,int) ; 
 int /*<<< orphan*/  FUNC2 (struct bio_vec*) ; 
 scalar_t__ FUNC3 (struct bio_vec*) ; 
 int /*<<< orphan*/  FUNC4 (unsigned char*) ; 
 unsigned char* FUNC5 (size_t,int /*<<< orphan*/ ) ; 
 unsigned char* FUNC6 (struct page*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (unsigned char*,int /*<<< orphan*/ ) ; 
 int FUNC8 (unsigned char*,scalar_t__,unsigned char*,size_t*) ; 
 int /*<<< orphan*/  FUNC9 (unsigned char*,unsigned char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (char*,int,size_t) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 scalar_t__ FUNC13 (int) ; 
 scalar_t__ FUNC14 (unsigned char*) ; 
 int /*<<< orphan*/  FUNC15 (struct zram*,int /*<<< orphan*/ *) ; 
 int FUNC16 (struct zram*,size_t,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC17(struct zram *zram, struct bio_vec *bvec,
			  u32 index, int offset, struct bio *bio)
{
	int ret;
	size_t clen;
	struct page *page;
	struct zobj_header *zheader;
	unsigned char *user_mem, *cmem, *uncmem = NULL;

	page = bvec->bv_page;

	if (FUNC16(zram, index, ZRAM_ZERO)) {
		FUNC2(bvec);
		return 0;
	}

	/* Requested page is not present in compressed area */
	if (FUNC13(!zram->table[index].page)) {
		FUNC10("Read before write: sector=%lu, size=%u",
			 (ulong)(bio->bi_sector), bio->bi_size);
		FUNC2(bvec);
		return 0;
	}

	/* Page is stored uncompressed since it's incompressible */
	if (FUNC13(FUNC16(zram, index, ZRAM_UNCOMPRESSED))) {
		FUNC1(zram, bvec, index, offset);
		return 0;
	}

	if (FUNC3(bvec)) {
		/* Use  a temporary buffer to decompress the page */
		uncmem = FUNC5(PAGE_SIZE, GFP_KERNEL);
		if (!uncmem) {
			FUNC12("Error allocating temp memory!\n");
			return -ENOMEM;
		}
	}

	user_mem = FUNC6(page, KM_USER0);
	if (!FUNC3(bvec))
		uncmem = user_mem;
	clen = PAGE_SIZE;

	cmem = FUNC6(zram->table[index].page, KM_USER1) +
		zram->table[index].offset;

	ret = FUNC8(cmem + sizeof(*zheader),
				    FUNC14(cmem) - sizeof(*zheader),
				    uncmem, &clen);

	if (FUNC3(bvec)) {
		FUNC9(user_mem + bvec->bv_offset, uncmem + offset,
		       bvec->bv_len);
		FUNC4(uncmem);
	}

	FUNC7(cmem, KM_USER1);
	FUNC7(user_mem, KM_USER0);

	/* Should NEVER happen. Return bio error if it does. */
	if (FUNC13(ret != LZO_E_OK)) {
		FUNC11("Decompression failed! err=%d, page=%u\n", ret, index);
		FUNC15(zram, &zram->stats.failed_reads);
		return ret;
	}

	FUNC0(page);

	return 0;
}