#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct page {TYPE_1__* mapping; } ;
struct nfs_page {int dummy; } ;
struct nfs_open_context {int dummy; } ;
struct inode {int dummy; } ;
struct TYPE_2__ {struct inode* host; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct nfs_page*) ; 
 struct nfs_page* FUNC1 (struct nfs_open_context*,struct inode*,struct page*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*,struct nfs_page*) ; 
 struct nfs_page* FUNC3 (struct inode*,struct page*,unsigned int,unsigned int) ; 

__attribute__((used)) static struct nfs_page * FUNC4(struct nfs_open_context* ctx,
		struct page *page, unsigned int offset, unsigned int bytes)
{
	struct inode *inode = page->mapping->host;
	struct nfs_page	*req;

	req = FUNC3(inode, page, offset, bytes);
	if (req != NULL)
		goto out;
	req = FUNC1(ctx, inode, page, offset, bytes);
	if (FUNC0(req))
		goto out;
	FUNC2(inode, req);
out:
	return req;
}