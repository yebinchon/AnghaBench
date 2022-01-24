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
struct pnfs_layout_hdr {int /*<<< orphan*/  plh_lc_cred; struct inode* plh_inode; int /*<<< orphan*/  plh_bulk_recall; int /*<<< orphan*/  plh_segs; int /*<<< orphan*/  plh_layouts; int /*<<< orphan*/  plh_refcount; } ;
struct nfs_open_context {TYPE_2__* state; } ;
struct inode {int dummy; } ;
typedef  int /*<<< orphan*/  gfp_t ;
struct TYPE_4__ {TYPE_1__* owner; } ;
struct TYPE_3__ {int /*<<< orphan*/  so_cred; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct pnfs_layout_hdr* FUNC3 (struct inode*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct pnfs_layout_hdr *
FUNC4(struct inode *ino,
		      struct nfs_open_context *ctx,
		      gfp_t gfp_flags)
{
	struct pnfs_layout_hdr *lo;

	lo = FUNC3(ino, gfp_flags);
	if (!lo)
		return NULL;
	FUNC1(&lo->plh_refcount, 1);
	FUNC0(&lo->plh_layouts);
	FUNC0(&lo->plh_segs);
	FUNC0(&lo->plh_bulk_recall);
	lo->plh_inode = ino;
	lo->plh_lc_cred = FUNC2(ctx->state->owner->so_cred);
	return lo;
}