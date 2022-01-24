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
struct qstr {int dummy; } ;
struct page {int dummy; } ;
struct inode {int dummy; } ;
struct ext2_dir_entry_2 {int /*<<< orphan*/  inode; } ;
typedef  int /*<<< orphan*/  ino_t ;

/* Variables and functions */
 struct ext2_dir_entry_2* FUNC0 (struct inode*,struct qstr*,struct page**) ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

ino_t FUNC3(struct inode *dir, struct qstr *child)
{
	ino_t res = 0;
	struct ext2_dir_entry_2 *de;
	struct page *page;
	
	de = FUNC0 (dir, child, &page);
	if (de) {
		res = FUNC2(de->inode);
		FUNC1(page);
	}
	return res;
}