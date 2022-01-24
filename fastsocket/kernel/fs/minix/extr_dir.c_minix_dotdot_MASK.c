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
struct minix_sb_info {int dummy; } ;
struct minix_dir_entry {int dummy; } ;
struct inode {int /*<<< orphan*/  i_sb; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 struct page* FUNC1 (struct inode*,int /*<<< orphan*/ ) ; 
 struct minix_dir_entry* FUNC2 (int /*<<< orphan*/ ,struct minix_sb_info*) ; 
 struct minix_sb_info* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct page*) ; 

struct minix_dir_entry * FUNC5 (struct inode *dir, struct page **p)
{
	struct page *page = FUNC1(dir, 0);
	struct minix_sb_info *sbi = FUNC3(dir->i_sb);
	struct minix_dir_entry *de = NULL;

	if (!FUNC0(page)) {
		de = FUNC2(FUNC4(page), sbi);
		*p = page;
	}
	return de;
}