#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int ra_pages; } ;
struct TYPE_8__ {TYPE_2__* dentry; } ;
struct file {int /*<<< orphan*/  f_lock; int /*<<< orphan*/  f_mode; TYPE_5__ f_ra; struct address_space* f_mapping; TYPE_3__ f_path; } ;
struct backing_dev_info {int ra_pages; } ;
struct address_space {struct backing_dev_info* backing_dev_info; TYPE_4__* a_ops; } ;
typedef  scalar_t__ pgoff_t ;
typedef  scalar_t__ loff_t ;
struct TYPE_9__ {scalar_t__ get_xip_mem; } ;
struct TYPE_7__ {TYPE_1__* d_inode; } ;
struct TYPE_6__ {int /*<<< orphan*/  i_mode; } ;
typedef  int SYSCALL_DEFINE ;

/* Variables and functions */
 int EBADF ; 
 int EINVAL ; 
 int ESPIPE ; 
 int /*<<< orphan*/  FMODE_RANDOM ; 
 scalar_t__ PAGE_CACHE_SHIFT ; 
 int /*<<< orphan*/  PAGE_CACHE_SIZE ; 
#define  POSIX_FADV_DONTNEED 133 
#define  POSIX_FADV_NOREUSE 132 
#define  POSIX_FADV_NORMAL 131 
#define  POSIX_FADV_RANDOM 130 
#define  POSIX_FADV_SEQUENTIAL 129 
#define  POSIX_FADV_WILLNEED 128 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct backing_dev_info*) ; 
 struct file* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct address_space*) ; 
 int /*<<< orphan*/  FUNC4 (struct address_space*,struct file*,scalar_t__,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (struct file*) ; 
 unsigned long FUNC6 (struct address_space*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

SYSCALL_DEFINE(FUNC10)(int fd, loff_t offset, loff_t len, int advice)
{
	struct file *file = FUNC2(fd);
	struct address_space *mapping;
	struct backing_dev_info *bdi;
	loff_t endbyte;			/* inclusive */
	pgoff_t start_index;
	pgoff_t end_index;
	unsigned long nrpages;
	int ret = 0;

	if (!file)
		return -EBADF;

	if (FUNC0(file->f_path.dentry->d_inode->i_mode)) {
		ret = -ESPIPE;
		goto out;
	}

	mapping = file->f_mapping;
	if (!mapping || len < 0) {
		ret = -EINVAL;
		goto out;
	}

	if (mapping->a_ops->get_xip_mem) {
		switch (advice) {
		case POSIX_FADV_NORMAL:
		case POSIX_FADV_RANDOM:
		case POSIX_FADV_SEQUENTIAL:
		case POSIX_FADV_WILLNEED:
		case POSIX_FADV_NOREUSE:
		case POSIX_FADV_DONTNEED:
			/* no bad return value, but ignore advice */
			break;
		default:
			ret = -EINVAL;
		}
		goto out;
	}

	/* Careful about overflows. Len == 0 means "as much as possible" */
	endbyte = offset + len;
	if (!len || endbyte < len)
		endbyte = -1;
	else
		endbyte--;		/* inclusive */

	bdi = mapping->backing_dev_info;

	switch (advice) {
	case POSIX_FADV_NORMAL:
		file->f_ra.ra_pages = bdi->ra_pages;
		FUNC8(&file->f_lock);
		file->f_mode &= ~FMODE_RANDOM;
		FUNC9(&file->f_lock);
		break;
	case POSIX_FADV_RANDOM:
		FUNC8(&file->f_lock);
		file->f_mode |= FMODE_RANDOM;
		FUNC9(&file->f_lock);
		break;
	case POSIX_FADV_SEQUENTIAL:
		file->f_ra.ra_pages = bdi->ra_pages * 2;
		FUNC8(&file->f_lock);
		file->f_mode &= ~FMODE_RANDOM;
		FUNC9(&file->f_lock);
		break;
	case POSIX_FADV_WILLNEED:
		/* First and last PARTIAL page! */
		start_index = offset >> PAGE_CACHE_SHIFT;
		end_index = endbyte >> PAGE_CACHE_SHIFT;

		/* Careful about overflow on the "+1" */
		nrpages = end_index - start_index + 1;
		if (!nrpages)
			nrpages = ~0UL;

		/*
		 * Ignore return value because fadvise() shall return
		 * success even if filesystem can't retrieve a hint,
		 */
		FUNC4(mapping, file, start_index,
					   nrpages);
		break;
	case POSIX_FADV_NOREUSE:
		break;
	case POSIX_FADV_DONTNEED:
		if (!FUNC1(mapping->backing_dev_info))
			FUNC3(mapping);

		/* First and last FULL page! */
		start_index = (offset+(PAGE_CACHE_SIZE-1)) >> PAGE_CACHE_SHIFT;
		end_index = (endbyte >> PAGE_CACHE_SHIFT);

		if (end_index >= start_index) {
			unsigned long count = FUNC6(mapping,
						start_index, end_index);

			/*
			 * If fewer pages were invalidated than expected then
			 * it is possible that some of the pages were on
			 * a per-cpu pagevec for a remote CPU. Drain all
			 * pagevecs and try again.
			 */
			if (count < (end_index - start_index + 1)) {
				FUNC7();
				FUNC6(mapping, start_index,
						end_index);
			}
		}
		break;
	default:
		ret = -EINVAL;
	}
out:
	FUNC5(file);
	return ret;
}