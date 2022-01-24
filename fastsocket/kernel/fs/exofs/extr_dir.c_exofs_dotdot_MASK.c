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
struct inode {int dummy; } ;
struct exofs_dir_entry {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 struct page* FUNC1 (struct inode*,int /*<<< orphan*/ ) ; 
 struct exofs_dir_entry* FUNC2 (struct exofs_dir_entry*) ; 
 scalar_t__ FUNC3 (struct page*) ; 

struct exofs_dir_entry *FUNC4(struct inode *dir, struct page **p)
{
	struct page *page = FUNC1(dir, 0);
	struct exofs_dir_entry *de = NULL;

	if (!FUNC0(page)) {
		de = FUNC2(
				(struct exofs_dir_entry *)FUNC3(page));
		*p = page;
	}
	return de;
}