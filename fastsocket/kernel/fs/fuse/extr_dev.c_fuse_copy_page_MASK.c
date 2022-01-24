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
struct fuse_copy_state {int /*<<< orphan*/  write; int /*<<< orphan*/  len; } ;

/* Variables and functions */
 int /*<<< orphan*/  KM_USER1 ; 
 unsigned int PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 unsigned int FUNC1 (struct fuse_copy_state*,void**,unsigned int*) ; 
 int FUNC2 (struct fuse_copy_state*) ; 
 void* FUNC3 (struct page*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (void*,int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static int FUNC6(struct fuse_copy_state *cs, struct page *page,
			  unsigned offset, unsigned count, int zeroing)
{
	if (page && zeroing && count < PAGE_SIZE) {
		void *mapaddr = FUNC3(page, KM_USER1);
		FUNC5(mapaddr, 0, PAGE_SIZE);
		FUNC4(mapaddr, KM_USER1);
	}
	while (count) {
		if (!cs->len) {
			int err = FUNC2(cs);
			if (err)
				return err;
		}
		if (page) {
			void *mapaddr = FUNC3(page, KM_USER1);
			void *buf = mapaddr + offset;
			offset += FUNC1(cs, &buf, &count);
			FUNC4(mapaddr, KM_USER1);
		} else
			offset += FUNC1(cs, NULL, &count);
	}
	if (page && !cs->write)
		FUNC0(page);
	return 0;
}