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
struct page {int dummy; } ;
struct bio_vec {int bv_offset; int /*<<< orphan*/  bv_len; struct page* bv_page; } ;

/* Variables and functions */
 int /*<<< orphan*/  KM_USER0 ; 
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 void* FUNC1 (struct page*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct bio_vec *bvec)
{
	struct page *page = bvec->bv_page;
	void *user_mem;

	user_mem = FUNC1(page, KM_USER0);
	FUNC3(user_mem + bvec->bv_offset, 0, bvec->bv_len);
	FUNC2(user_mem, KM_USER0);

	FUNC0(page);
}