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
struct TYPE_4__ {int /*<<< orphan*/  failed_reads; } ;
struct zram {TYPE_2__ stats; TYPE_1__* table; } ;
struct zobj_header {int dummy; } ;
struct TYPE_3__ {int offset; int /*<<< orphan*/  page; } ;

/* Variables and functions */
 int /*<<< orphan*/  KM_USER0 ; 
 int LZO_E_OK ; 
 size_t PAGE_SIZE ; 
 int /*<<< orphan*/  ZRAM_UNCOMPRESSED ; 
 int /*<<< orphan*/  ZRAM_ZERO ; 
 unsigned char* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*,int /*<<< orphan*/ ) ; 
 int FUNC2 (unsigned char*,scalar_t__,char*,size_t*) ; 
 int /*<<< orphan*/  FUNC3 (char*,unsigned char*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,size_t) ; 
 scalar_t__ FUNC6 (int) ; 
 scalar_t__ FUNC7 (unsigned char*) ; 
 int /*<<< orphan*/  FUNC8 (struct zram*,int /*<<< orphan*/ *) ; 
 int FUNC9 (struct zram*,size_t,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct zram *zram, char *mem, u32 index)
{
	int ret;
	size_t clen = PAGE_SIZE;
	struct zobj_header *zheader;
	unsigned char *cmem;

	if (FUNC9(zram, index, ZRAM_ZERO) ||
	    !zram->table[index].page) {
		FUNC4(mem, 0, PAGE_SIZE);
		return 0;
	}

	cmem = FUNC0(zram->table[index].page, KM_USER0) +
		zram->table[index].offset;

	/* Page is stored uncompressed since it's incompressible */
	if (FUNC6(FUNC9(zram, index, ZRAM_UNCOMPRESSED))) {
		FUNC3(mem, cmem, PAGE_SIZE);
		FUNC1(cmem, KM_USER0);
		return 0;
	}

	ret = FUNC2(cmem + sizeof(*zheader),
				    FUNC7(cmem) - sizeof(*zheader),
				    mem, &clen);
	FUNC1(cmem, KM_USER0);

	/* Should NEVER happen. Return bio error if it does. */
	if (FUNC6(ret != LZO_E_OK)) {
		FUNC5("Decompression failed! err=%d, page=%u\n", ret, index);
		FUNC8(zram, &zram->stats.failed_reads);
		return ret;
	}

	return 0;
}