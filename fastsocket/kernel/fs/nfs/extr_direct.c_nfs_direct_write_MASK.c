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
struct nfs_lock_context {int dummy; } ;
struct nfs_direct_req {struct kiocb* iocb; struct nfs_lock_context* l_ctx; int /*<<< orphan*/  ctx; struct inode* inode; } ;
struct kiocb {TYPE_2__* ki_filp; } ;
struct iovec {int dummy; } ;
struct inode {int dummy; } ;
typedef  scalar_t__ ssize_t ;
typedef  int /*<<< orphan*/  loff_t ;
struct TYPE_4__ {TYPE_1__* f_mapping; } ;
struct TYPE_3__ {struct inode* host; } ;

/* Variables and functions */
 scalar_t__ ENOMEM ; 
 scalar_t__ FUNC0 (struct nfs_lock_context*) ; 
 scalar_t__ FUNC1 (struct nfs_lock_context*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct kiocb*) ; 
 struct nfs_direct_req* FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct nfs_direct_req*) ; 
 scalar_t__ FUNC6 (struct nfs_direct_req*) ; 
 scalar_t__ FUNC7 (struct nfs_direct_req*,struct iovec const*,unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 
 struct nfs_lock_context* FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static ssize_t FUNC10(struct kiocb *iocb, const struct iovec *iov,
				unsigned long nr_segs, loff_t pos,
				size_t count)
{
	ssize_t result = -ENOMEM;
	struct inode *inode = iocb->ki_filp->f_mapping->host;
	struct nfs_direct_req *dreq;
	struct nfs_lock_context *l_ctx;

	dreq = FUNC4();
	if (!dreq)
		goto out;

	dreq->inode = inode;
	dreq->ctx = FUNC2(FUNC8(iocb->ki_filp));
	l_ctx = FUNC9(dreq->ctx);
	if (FUNC0(l_ctx)) {
		result = FUNC1(l_ctx);
		goto out_release;
	}
	dreq->l_ctx = l_ctx;
	if (!FUNC3(iocb))
		dreq->iocb = iocb;

	result = FUNC7(dreq, iov, nr_segs, pos);
	if (!result)
		result = FUNC6(dreq);
out_release:
	FUNC5(dreq);
out:
	return result;
}