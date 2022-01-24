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
struct pipe_inode_info {int dummy; } ;
struct pipe_buffer {struct page* page; } ;
struct page {int /*<<< orphan*/  mapping; } ;

/* Variables and functions */
 int EIO ; 
 int ENODATA ; 
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 

__attribute__((used)) static int FUNC3(struct pipe_inode_info *pipe,
				       struct pipe_buffer *buf)
{
	struct page *page = buf->page;
	int err;

	if (!FUNC0(page)) {
		FUNC1(page);

		/*
		 * Page got truncated/unhashed. This will cause a 0-byte
		 * splice, if this is the first page.
		 */
		if (!page->mapping) {
			err = -ENODATA;
			goto error;
		}

		/*
		 * Uh oh, read-error from disk.
		 */
		if (!FUNC0(page)) {
			err = -EIO;
			goto error;
		}

		/*
		 * Page is ok afterall, we are done.
		 */
		FUNC2(page);
	}

	return 0;
error:
	FUNC2(page);
	return err;
}