#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct page {int dummy; } ;
struct TYPE_11__ {TYPE_4__* dentry; } ;
struct file {TYPE_5__ f_path; } ;
struct address_space {TYPE_6__* host; } ;
typedef  int loff_t ;
struct TYPE_12__ {int /*<<< orphan*/  i_ino; } ;
struct TYPE_9__ {int /*<<< orphan*/  name; } ;
struct TYPE_10__ {TYPE_3__ d_name; TYPE_2__* d_parent; } ;
struct TYPE_7__ {int /*<<< orphan*/  name; } ;
struct TYPE_8__ {TYPE_1__ d_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  PAGECACHE ; 
 int PAGE_CACHE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,long long) ; 
 unsigned int FUNC3 (struct page*) ; 
 int FUNC4 (struct file*,struct page*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (struct page*) ; 
 int /*<<< orphan*/  FUNC6 (struct page*) ; 
 int /*<<< orphan*/  FUNC7 (struct page*,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC8 (struct page*,int /*<<< orphan*/ ,unsigned int,unsigned int,int) ; 

__attribute__((used)) static int FUNC9(struct file *file, struct address_space *mapping,
			loff_t pos, unsigned len, unsigned copied,
			struct page *page, void *fsdata)
{
	unsigned offset = pos & (PAGE_CACHE_SIZE - 1);
	int status;

	FUNC2(PAGECACHE, "NFS: write_end(%s/%s(%ld), %u@%lld)\n",
		file->f_path.dentry->d_parent->d_name.name,
		file->f_path.dentry->d_name.name,
		mapping->host->i_ino, len, (long long) pos);

	/*
	 * Zero any uninitialised parts of the page, and then mark the page
	 * as up to date if it turns out that we're extending the file.
	 */
	if (!FUNC0(page)) {
		unsigned pglen = FUNC3(page);
		unsigned end = offset + len;

		if (pglen == 0) {
			FUNC8(page, 0, offset,
					end, PAGE_CACHE_SIZE);
			FUNC1(page);
		} else if (end >= pglen) {
			FUNC7(page, end, PAGE_CACHE_SIZE);
			if (offset == 0)
				FUNC1(page);
		} else
			FUNC7(page, pglen, PAGE_CACHE_SIZE);
	}

	status = FUNC4(file, page, offset, copied);

	FUNC6(page);
	FUNC5(page);

	if (status < 0)
		return status;
	return copied;
}