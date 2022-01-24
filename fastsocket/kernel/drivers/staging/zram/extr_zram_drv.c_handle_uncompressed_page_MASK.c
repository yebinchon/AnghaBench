#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u32 ;
struct zram {TYPE_1__* table; } ;
struct page {int dummy; } ;
struct bio_vec {int bv_offset; int /*<<< orphan*/  bv_len; struct page* bv_page; } ;
struct TYPE_2__ {struct page* page; } ;

/* Variables and functions */
 int /*<<< orphan*/  KM_USER0 ; 
 int /*<<< orphan*/  KM_USER1 ; 
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 unsigned char* FUNC1 (struct page*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char*,unsigned char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct zram *zram, struct bio_vec *bvec,
				     u32 index, int offset)
{
	struct page *page = bvec->bv_page;
	unsigned char *user_mem, *cmem;

	user_mem = FUNC1(page, KM_USER0);
	cmem = FUNC1(zram->table[index].page, KM_USER1);

	FUNC3(user_mem + bvec->bv_offset, cmem + offset, bvec->bv_len);
	FUNC2(cmem, KM_USER1);
	FUNC2(user_mem, KM_USER0);

	FUNC0(page);
}