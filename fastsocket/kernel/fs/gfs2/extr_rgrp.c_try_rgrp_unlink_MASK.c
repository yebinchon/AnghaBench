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
typedef  scalar_t__ u64 ;
struct gfs2_sbd {int /*<<< orphan*/  sd_log_flush_lock; } ;
struct gfs2_rgrpd {int /*<<< orphan*/  rd_flags; int /*<<< orphan*/  rd_bits; struct gfs2_sbd* rd_sbd; } ;
struct gfs2_rbm {int /*<<< orphan*/  offset; int /*<<< orphan*/  bi; struct gfs2_rgrpd* rgd; } ;
struct gfs2_inode {int dummy; } ;
struct gfs2_glock {int /*<<< orphan*/  gl_delete; struct gfs2_inode* gl_object; } ;

/* Variables and functions */
 int /*<<< orphan*/  CREATE ; 
 int ENOSPC ; 
 int /*<<< orphan*/  GFS2_BLKST_UNLINKED ; 
 int /*<<< orphan*/  GFS2_RDF_CHECK ; 
 scalar_t__ NO_BLOCK ; 
 int NR_CPUS ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  gfs2_delete_workqueue ; 
 int FUNC2 (struct gfs2_sbd*,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct gfs2_glock**) ; 
 int /*<<< orphan*/  FUNC3 (struct gfs2_glock*) ; 
 int /*<<< orphan*/  gfs2_inode_glops ; 
 int FUNC4 (struct gfs2_rbm*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (struct gfs2_rbm*,scalar_t__) ; 
 scalar_t__ FUNC6 (struct gfs2_rbm*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9(struct gfs2_rgrpd *rgd, u64 *last_unlinked, u64 skip)
{
	u64 block;
	struct gfs2_sbd *sdp = rgd->rd_sbd;
	struct gfs2_glock *gl;
	struct gfs2_inode *ip;
	int error;
	int found = 0;
	struct gfs2_rbm rbm = { .rgd = rgd, .bi = rgd->rd_bits, .offset = 0 };

	while (1) {
		FUNC1(&sdp->sd_log_flush_lock);
		error = FUNC4(&rbm, GFS2_BLKST_UNLINKED, NULL, NULL,
				      true, NULL);
		FUNC8(&sdp->sd_log_flush_lock);
		if (error == -ENOSPC)
			break;
		if (FUNC0(error))
			break;

		block = FUNC6(&rbm);
		if (FUNC5(&rbm, block + 1))
			break;
		if (*last_unlinked != NO_BLOCK && block <= *last_unlinked)
			continue;
		if (block == skip)
			continue;
		*last_unlinked = block;

		error = FUNC2(sdp, block, &gfs2_inode_glops, CREATE, &gl);
		if (error)
			continue;

		/* If the inode is already in cache, we can ignore it here
		 * because the existing inode disposal code will deal with
		 * it when all refs have gone away. Accessing gl_object like
		 * this is not safe in general. Here it is ok because we do
		 * not dereference the pointer, and we only need an approx
		 * answer to whether it is NULL or not.
		 */
		ip = gl->gl_object;

		if (ip || FUNC7(gfs2_delete_workqueue, &gl->gl_delete) == 0)
			FUNC3(gl);
		else
			found++;

		/* Limit reclaim to sensible number of tasks */
		if (found > NR_CPUS)
			return;
	}

	rgd->rd_flags &= ~GFS2_RDF_CHECK;
	return;
}