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
struct key {int dummy; } ;
struct inode {int /*<<< orphan*/  i_mapping; int /*<<< orphan*/  i_ino; } ;
struct file {struct key* private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  EIO ; 
 struct page* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 scalar_t__ FUNC3 (struct page*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*,struct page*) ; 
 int /*<<< orphan*/  FUNC7 (struct page*) ; 
 int /*<<< orphan*/  FUNC8 (struct page*) ; 
 struct page* FUNC9 (int /*<<< orphan*/ ,unsigned long,struct file*) ; 

__attribute__((used)) static struct page *FUNC10(struct inode *dir, unsigned long index,
				     struct key *key)
{
	struct page *page;
	struct file file = {
		.private_data = key,
	};

	FUNC4("{%lu},%lu", dir->i_ino, index);

	page = FUNC9(dir->i_mapping, index, &file);
	if (!FUNC1(page)) {
		FUNC8(page);
		if (!FUNC2(page))
			FUNC6(dir, page);
		if (FUNC3(page))
			goto fail;
	}
	return page;

fail:
	FUNC7(page);
	FUNC5(" = -EIO");
	return FUNC0(-EIO);
}