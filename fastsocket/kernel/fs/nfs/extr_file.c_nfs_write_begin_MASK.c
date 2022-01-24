#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_7__ ;
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct page {int dummy; } ;
struct TYPE_12__ {TYPE_4__* dentry; } ;
struct file {TYPE_5__ f_path; } ;
struct address_space {TYPE_7__* host; } ;
typedef  int pgoff_t ;
typedef  int loff_t ;
struct TYPE_14__ {int /*<<< orphan*/  i_ino; } ;
struct TYPE_13__ {int /*<<< orphan*/  flags; } ;
struct TYPE_10__ {int /*<<< orphan*/  name; } ;
struct TYPE_11__ {TYPE_3__ d_name; TYPE_2__* d_parent; } ;
struct TYPE_8__ {int /*<<< orphan*/  name; } ;
struct TYPE_9__ {TYPE_1__ d_name; } ;

/* Variables and functions */
 int ENOMEM ; 
 TYPE_6__* FUNC0 (TYPE_7__*) ; 
 int /*<<< orphan*/  NFS_INO_FLUSHING ; 
 int /*<<< orphan*/  PAGECACHE ; 
 int PAGE_CACHE_SHIFT ; 
 int /*<<< orphan*/  TASK_KILLABLE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,long long) ; 
 struct page* FUNC2 (struct address_space*,int,unsigned int) ; 
 int FUNC3 (struct file*,struct page*) ; 
 int FUNC4 (struct file*,struct page*) ; 
 int /*<<< orphan*/  nfs_wait_bit_killable ; 
 scalar_t__ FUNC5 (struct file*,struct page*,int,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (struct page*) ; 
 int /*<<< orphan*/  FUNC7 (struct page*) ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct file *file, struct address_space *mapping,
			loff_t pos, unsigned len, unsigned flags,
			struct page **pagep, void **fsdata)
{
	int ret;
	pgoff_t index = pos >> PAGE_CACHE_SHIFT;
	struct page *page;
	int once_thru = 0;

	FUNC1(PAGECACHE, "NFS: write_begin(%s/%s(%ld), %u@%lld)\n",
		file->f_path.dentry->d_parent->d_name.name,
		file->f_path.dentry->d_name.name,
		mapping->host->i_ino, len, (long long) pos);

start:
	/*
	 * Prevent starvation issues if someone is doing a consistency
	 * sync-to-disk
	 */
	ret = FUNC8(&FUNC0(mapping->host)->flags, NFS_INO_FLUSHING,
			nfs_wait_bit_killable, TASK_KILLABLE);
	if (ret)
		return ret;

	page = FUNC2(mapping, index, flags);
	if (!page)
		return -ENOMEM;
	*pagep = page;

	ret = FUNC3(file, page);
	if (ret) {
		FUNC7(page);
		FUNC6(page);
	} else if (!once_thru &&
		   FUNC5(file, page, pos, len)) {
		once_thru = 1;
		ret = FUNC4(file, page);
		FUNC6(page);
		if (!ret)
			goto start;
	}
	return ret;
}