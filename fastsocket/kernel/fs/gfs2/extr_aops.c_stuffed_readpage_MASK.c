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
struct page {int /*<<< orphan*/  index; } ;
struct gfs2_inode {int /*<<< orphan*/  i_inode; } ;
struct gfs2_dinode {int dummy; } ;
struct buffer_head {int b_size; scalar_t__ b_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  KM_USER0 ; 
 scalar_t__ PAGE_CACHE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 int /*<<< orphan*/  FUNC1 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 int FUNC3 (struct gfs2_inode*,struct buffer_head**) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 void* FUNC5 (struct page*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (void*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC8 (void*,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct page*,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC11(struct gfs2_inode *ip, struct page *page)
{
	struct buffer_head *dibh;
	u64 dsize = FUNC4(&ip->i_inode);
	void *kaddr;
	int error;

	/*
	 * Due to the order of unstuffing files and ->fault(), we can be
	 * asked for a zero page in the case of a stuffed file being extended,
	 * so we need to supply one here. It doesn't happen often.
	 */
	if (FUNC9(page->index)) {
		FUNC10(page, 0, PAGE_CACHE_SIZE);
		FUNC0(page);
		return 0;
	}

	error = FUNC3(ip, &dibh);
	if (error)
		return error;

	kaddr = FUNC5(page, KM_USER0);
	if (dsize > (dibh->b_size - sizeof(struct gfs2_dinode)))
		dsize = (dibh->b_size - sizeof(struct gfs2_dinode));
	FUNC7(kaddr, dibh->b_data + sizeof(struct gfs2_dinode), dsize);
	FUNC8(kaddr + dsize, 0, PAGE_CACHE_SIZE - dsize);
	FUNC6(kaddr, KM_USER0);
	FUNC2(page);
	FUNC1(dibh);
	FUNC0(page);

	return 0;
}