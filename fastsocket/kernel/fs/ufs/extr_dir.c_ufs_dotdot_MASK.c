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
struct ufs_dir_entry {int dummy; } ;
struct page {int dummy; } ;
struct inode {int /*<<< orphan*/  i_sb; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 scalar_t__ FUNC1 (struct page*) ; 
 struct page* FUNC2 (struct inode*,int /*<<< orphan*/ ) ; 
 struct ufs_dir_entry* FUNC3 (int /*<<< orphan*/ ,struct ufs_dir_entry*) ; 

struct ufs_dir_entry *FUNC4(struct inode *dir, struct page **p)
{
	struct page *page = FUNC2(dir, 0);
	struct ufs_dir_entry *de = NULL;

	if (!FUNC0(page)) {
		de = FUNC3(dir->i_sb,
				    (struct ufs_dir_entry *)FUNC1(page));
		*p = page;
	}
	return de;
}