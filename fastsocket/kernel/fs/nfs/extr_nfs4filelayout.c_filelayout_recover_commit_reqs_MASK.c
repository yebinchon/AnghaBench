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
struct pnfs_commit_bucket {int /*<<< orphan*/ * wlseg; int /*<<< orphan*/  written; } ;
struct nfs_commit_info {TYPE_1__* ds; } ;
struct list_head {int dummy; } ;
struct TYPE_2__ {int nbuckets; scalar_t__ nwritten; struct pnfs_commit_bucket* buckets; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,struct list_head*,struct nfs_commit_info*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct list_head *dst,
					   struct nfs_commit_info *cinfo)
{
	struct pnfs_commit_bucket *b;
	int i;

	/* NOTE cinfo->lock is NOT held, relying on fact that this is
	 * only called on single thread per dreq.
	 * Can't take the lock because need to do put_lseg
	 */
	for (i = 0, b = cinfo->ds->buckets; i < cinfo->ds->nbuckets; i++, b++) {
		if (FUNC3(&b->written, dst, cinfo, 0)) {
			FUNC0(!FUNC1(&b->written));
			FUNC2(b->wlseg);
			b->wlseg = NULL;
		}
	}
	cinfo->ds->nwritten = 0;
}