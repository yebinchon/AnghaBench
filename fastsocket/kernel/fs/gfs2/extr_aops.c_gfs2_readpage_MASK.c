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
struct page {struct address_space* mapping; } ;
struct gfs2_inode {int /*<<< orphan*/  i_gl; } ;
struct gfs2_holder {int dummy; } ;
struct file {int dummy; } ;
struct address_space {int /*<<< orphan*/  host; } ;

/* Variables and functions */
 int AOP_TRUNCATED_PAGE ; 
 struct gfs2_inode* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LM_ST_SHARED ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 int FUNC2 (struct file*,struct page*) ; 
 int /*<<< orphan*/  FUNC3 (struct gfs2_holder*) ; 
 int FUNC4 (struct gfs2_holder*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct gfs2_holder*) ; 
 int /*<<< orphan*/  FUNC6 (struct gfs2_holder*) ; 
 int /*<<< orphan*/  FUNC7 (struct page*) ; 
 scalar_t__ FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (struct page*) ; 

__attribute__((used)) static int FUNC10(struct file *file, struct page *page)
{
	struct address_space *mapping = page->mapping;
	struct gfs2_inode *ip = FUNC0(mapping->host);
	struct gfs2_holder gh;
	int error;

	FUNC9(page);
	FUNC5(ip->i_gl, LM_ST_SHARED, 0, &gh);
	error = FUNC4(&gh);
	if (FUNC8(error))
		goto out;
	error = AOP_TRUNCATED_PAGE;
	FUNC7(page);
	if (page->mapping == mapping && !FUNC1(page))
		error = FUNC2(file, page);
	else
		FUNC9(page);
	FUNC3(&gh);
out:
	FUNC6(&gh);
	if (error && error != AOP_TRUNCATED_PAGE)
		FUNC7(page);
	return error;
}