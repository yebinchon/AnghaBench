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
struct nfs_readdesc {int /*<<< orphan*/ * ctx; struct nfs_pageio_descriptor* pgio; } ;
struct nfs_pageio_descriptor {int pg_bytes_written; } ;
struct list_head {int dummy; } ;
struct inode {TYPE_1__* i_sb; } ;
struct file {int dummy; } ;
struct address_space {struct inode* host; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* read_pageio_init ) (struct nfs_pageio_descriptor*,struct inode*,int /*<<< orphan*/ *) ;} ;
struct TYPE_3__ {int /*<<< orphan*/  s_id; } ;

/* Variables and functions */
 int EBADF ; 
 int ESTALE ; 
 int /*<<< orphan*/  FMODE_READ ; 
 int /*<<< orphan*/  NFSIOS_READPAGES ; 
 int /*<<< orphan*/  NFSIOS_VFSREADPAGES ; 
 scalar_t__ FUNC0 (struct inode*) ; 
 TYPE_2__* FUNC1 (struct inode*) ; 
 scalar_t__ FUNC2 (struct inode*) ; 
 int PAGE_CACHE_SHIFT ; 
 int PAGE_CACHE_SIZE ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,long long,unsigned int) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  nfs_async_read_completion_ops ; 
 int /*<<< orphan*/  FUNC6 (struct file*) ; 
 int /*<<< orphan*/ * FUNC7 (struct inode*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct nfs_pageio_descriptor*) ; 
 int FUNC10 (int /*<<< orphan*/ *,struct inode*,struct address_space*,struct list_head*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int FUNC12 (struct address_space*,struct list_head*,int /*<<< orphan*/ ,struct nfs_readdesc*) ; 
 int /*<<< orphan*/  readpage_async_filler ; 
 int /*<<< orphan*/  FUNC13 (struct nfs_pageio_descriptor*,struct inode*,int /*<<< orphan*/ *) ; 

int FUNC14(struct file *filp, struct address_space *mapping,
		struct list_head *pages, unsigned nr_pages)
{
	struct nfs_pageio_descriptor pgio;
	struct nfs_readdesc desc = {
		.pgio = &pgio,
	};
	struct inode *inode = mapping->host;
	unsigned long npages;
	int ret = -ESTALE;

	FUNC3("NFS: nfs_readpages (%s/%Ld %d)\n",
			inode->i_sb->s_id,
			(long long)FUNC0(inode),
			nr_pages);
	FUNC8(inode, NFSIOS_VFSREADPAGES);

	if (FUNC2(inode))
		goto out;

	if (filp == NULL) {
		desc.ctx = FUNC7(inode, NULL, FMODE_READ);
		if (desc.ctx == NULL)
			return -EBADF;
	} else
		desc.ctx = FUNC4(FUNC6(filp));

	/* attempt to read as many of the pages as possible from the cache
	 * - this returns -ENOBUFS immediately if the cookie is negative
	 */
	ret = FUNC10(desc.ctx, inode, mapping,
					 pages, &nr_pages);
	if (ret == 0)
		goto read_complete; /* all pages were read */

	FUNC1(inode)->read_pageio_init(&pgio, inode, &nfs_async_read_completion_ops);

	ret = FUNC12(mapping, pages, readpage_async_filler, &desc);

	FUNC9(&pgio);
	npages = (pgio.pg_bytes_written + PAGE_CACHE_SIZE - 1) >> PAGE_CACHE_SHIFT;
	FUNC5(inode, NFSIOS_READPAGES, npages);
read_complete:
	FUNC11(desc.ctx);
out:
	return ret;
}