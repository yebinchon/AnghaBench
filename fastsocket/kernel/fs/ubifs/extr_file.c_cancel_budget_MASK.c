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
struct ubifs_inode {int /*<<< orphan*/  ui_mutex; int /*<<< orphan*/  dirty; } ;
struct ubifs_info {int dummy; } ;
struct page {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct page*) ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct ubifs_info*) ; 
 int /*<<< orphan*/  FUNC4 (struct ubifs_info*) ; 
 int /*<<< orphan*/  FUNC5 (struct ubifs_info*,struct ubifs_inode*) ; 

__attribute__((used)) static void FUNC6(struct ubifs_info *c, struct page *page,
			  struct ubifs_inode *ui, int appending)
{
	if (appending) {
		if (!ui->dirty)
			FUNC5(c, ui);
		FUNC2(&ui->ui_mutex);
	}
	if (!FUNC1(page)) {
		if (FUNC0(page))
			FUNC4(c);
		else
			FUNC3(c);
	}
}