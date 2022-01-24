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
struct inode {int /*<<< orphan*/  i_sb; } ;
struct file {int dummy; } ;
struct address_space {struct inode* host; } ;
typedef  int /*<<< orphan*/  loff_t ;

/* Variables and functions */
 int FUNC0 (struct file*,struct address_space*,int /*<<< orphan*/ ,unsigned int,unsigned int,struct page**,void**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nilfs_get_block ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC3 (int) ; 

__attribute__((used)) static int FUNC4(struct file *file, struct address_space *mapping,
			     loff_t pos, unsigned len, unsigned flags,
			     struct page **pagep, void **fsdata)

{
	struct inode *inode = mapping->host;
	int err = FUNC2(inode->i_sb, NULL, 1);

	if (FUNC3(err))
		return err;

	*pagep = NULL;
	err = FUNC0(file, mapping, pos, len, flags, pagep,
				fsdata, nilfs_get_block);
	if (FUNC3(err))
		FUNC1(inode->i_sb);
	return err;
}