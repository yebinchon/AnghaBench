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
struct nfs_lock_context {int /*<<< orphan*/  io_count; } ;
struct inode {int dummy; } ;
struct file_lock {int dummy; } ;
struct file {TYPE_1__* f_mapping; } ;
struct TYPE_4__ {int (* lock ) (struct file*,int,struct file_lock*) ;} ;
struct TYPE_3__ {struct inode* host; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nfs_lock_context*) ; 
 TYPE_2__* FUNC1 (struct inode*) ; 
 int FUNC2 (struct file*,struct file_lock*) ; 
 int /*<<< orphan*/  FUNC3 (struct file*) ; 
 struct nfs_lock_context* FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct nfs_lock_context*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int FUNC8 (struct file*,int,struct file_lock*) ; 

__attribute__((used)) static int
FUNC9(struct file *filp, int cmd, struct file_lock *fl, int is_local)
{
	struct inode *inode = filp->f_mapping->host;
	struct nfs_lock_context *l_ctx;
	int status;

	/*
	 * Flush all pending writes before doing anything
	 * with locks..
	 */
	FUNC7(filp->f_mapping);

	l_ctx = FUNC4(FUNC3(filp));
	if (!FUNC0(l_ctx)) {
		status = FUNC5(&l_ctx->io_count);
		FUNC6(l_ctx);
		if (status < 0)
			return status;
	}

	/* NOTE: special case
	 * 	If we're signalled while cleaning up locks on process exit, we
	 * 	still need to complete the unlock.
	 */
	/*
	 * Use local locking if mounted with "-onolock" or with appropriate
	 * "-olocal_lock="
	 */
	if (!is_local)
		status = FUNC1(inode)->lock(filp, cmd, fl);
	else
		status = FUNC2(filp, fl);
	return status;
}