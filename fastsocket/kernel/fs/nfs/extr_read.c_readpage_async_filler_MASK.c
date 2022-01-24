#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct page {TYPE_1__* mapping; } ;
struct nfs_readdesc {TYPE_2__* pgio; int /*<<< orphan*/  ctx; } ;
struct nfs_page {int dummy; } ;
struct inode {int dummy; } ;
struct TYPE_4__ {int pg_error; } ;
struct TYPE_3__ {struct inode* host; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct nfs_page*) ; 
 unsigned int PAGE_CACHE_SIZE ; 
 int FUNC1 (struct nfs_page*) ; 
 struct nfs_page* FUNC2 (int /*<<< orphan*/ ,struct inode*,struct page*,int /*<<< orphan*/ ,unsigned int) ; 
 unsigned int FUNC3 (struct page*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,struct nfs_page*) ; 
 int FUNC5 (struct page*) ; 
 int /*<<< orphan*/  FUNC6 (struct page*) ; 
 int /*<<< orphan*/  FUNC7 (struct page*,unsigned int,unsigned int) ; 

__attribute__((used)) static int
FUNC8(void *data, struct page *page)
{
	struct nfs_readdesc *desc = (struct nfs_readdesc *)data;
	struct inode *inode = page->mapping->host;
	struct nfs_page *new;
	unsigned int len;
	int error;

	len = FUNC3(page);
	if (len == 0)
		return FUNC5(page);

	new = FUNC2(desc->ctx, inode, page, 0, len);
	if (FUNC0(new))
		goto out_error;

	if (len < PAGE_CACHE_SIZE)
		FUNC7(page, len, PAGE_CACHE_SIZE);
	if (!FUNC4(desc->pgio, new)) {
		error = desc->pgio->pg_error;
		goto out_unlock;
	}
	return 0;
out_error:
	error = FUNC1(new);
out_unlock:
	FUNC6(page);
	return error;
}