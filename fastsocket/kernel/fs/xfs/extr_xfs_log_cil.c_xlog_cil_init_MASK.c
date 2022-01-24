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
struct xfs_cil_ctx {int sequence; struct xfs_cil* cil; int /*<<< orphan*/  busy_extents; int /*<<< orphan*/  committing; } ;
struct xfs_cil {int xc_current_sequence; struct log* xc_log; struct xfs_cil_ctx* xc_ctx; int /*<<< orphan*/  xc_commit_wait; int /*<<< orphan*/  xc_ctx_lock; int /*<<< orphan*/  xc_cil_lock; int /*<<< orphan*/  xc_committing; int /*<<< orphan*/  xc_cil; } ;
struct log {struct xfs_cil* l_cilp; TYPE_1__* l_mp; } ;
struct TYPE_2__ {int m_flags; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int KM_MAYFAIL ; 
 int KM_SLEEP ; 
 int XFS_MOUNT_DELAYLOG ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct xfs_cil*) ; 
 void* FUNC4 (int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

int
FUNC6(
	struct log	*log)
{
	struct xfs_cil	*cil;
	struct xfs_cil_ctx *ctx;

	log->l_cilp = NULL;
	if (!(log->l_mp->m_flags & XFS_MOUNT_DELAYLOG))
		return 0;

	cil = FUNC4(sizeof(*cil), KM_SLEEP|KM_MAYFAIL);
	if (!cil)
		return ENOMEM;

	ctx = FUNC4(sizeof(*ctx), KM_SLEEP|KM_MAYFAIL);
	if (!ctx) {
		FUNC3(cil);
		return ENOMEM;
	}

	FUNC0(&cil->xc_cil);
	FUNC0(&cil->xc_committing);
	FUNC5(&cil->xc_cil_lock);
	FUNC1(&cil->xc_ctx_lock);
	FUNC2(&cil->xc_commit_wait);

	FUNC0(&ctx->committing);
	FUNC0(&ctx->busy_extents);
	ctx->sequence = 1;
	ctx->cil = cil;
	cil->xc_ctx = ctx;
	cil->xc_current_sequence = ctx->sequence;

	cil->xc_log = log;
	log->l_cilp = cil;
	return 0;
}