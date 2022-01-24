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
struct file {int f_mode; } ;
typedef  int loff_t ;

/* Variables and functions */
 int FMODE_READ ; 
 int PAGE_CACHE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 unsigned int FUNC2 (struct page*) ; 

__attribute__((used)) static int FUNC3(struct file *file, struct page *page,
			loff_t pos, unsigned len)
{
	unsigned int pglen = FUNC2(page);
	unsigned int offset = pos & (PAGE_CACHE_SIZE - 1);
	unsigned int end = offset + len;

	if ((file->f_mode & FMODE_READ) &&	/* open for read? */
	    !FUNC1(page) &&		/* Uptodate? */
	    !FUNC0(page) &&		/* i/o request already? */
	    pglen &&				/* valid bytes of file? */
	    (end < pglen || offset))		/* replace all valid bytes? */
		return 1;
	return 0;
}