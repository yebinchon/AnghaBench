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
struct nilfs_sb_info {int dummy; } ;
struct inode {scalar_t__ i_size; int /*<<< orphan*/  i_sb; } ;
struct address_space {struct inode* host; } ;
typedef  scalar_t__ loff_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct inode*) ; 
 struct nilfs_sb_info* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NILFS_TI_SYNC ; 
 unsigned int FUNC2 (int /*<<< orphan*/ *,struct address_space*,scalar_t__,unsigned int,unsigned int,struct page*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*) ; 
 unsigned int FUNC5 (struct page*,unsigned int,unsigned int) ; 
 int FUNC6 (struct nilfs_sb_info*,struct inode*,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC8 (struct page*) ; 
 int /*<<< orphan*/  FUNC9 (struct page*) ; 

__attribute__((used)) static int FUNC10(struct page *page,
			      struct address_space *mapping,
			      unsigned from, unsigned to)
{
	struct inode *dir = mapping->host;
	struct nilfs_sb_info *sbi = FUNC1(dir->i_sb);
	loff_t pos = FUNC8(page) + from;
	unsigned len = to - from;
	unsigned nr_dirty, copied;
	int err;

	nr_dirty = FUNC5(page, from, to);
	copied = FUNC2(NULL, mapping, pos, len, len, page, NULL);
	if (pos + copied > dir->i_size) {
		FUNC3(dir, pos + copied);
		FUNC4(dir);
	}
	if (FUNC0(dir))
		FUNC7(NILFS_TI_SYNC);
	err = FUNC6(sbi, dir, nr_dirty);
	FUNC9(page);
	return err;
}