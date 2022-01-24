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
struct super_block {struct gfs2_sbd* s_fs_info; } ;
struct gfs2_sbd {scalar_t__ sd_quota_sync_gen; } ;
struct gfs2_quota_data {scalar_t__ qd_sync_gen; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC0 (unsigned int,struct gfs2_quota_data**) ; 
 unsigned int FUNC1 (struct gfs2_sbd*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  gt_quota_simul_sync ; 
 struct gfs2_quota_data** FUNC2 (unsigned int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct gfs2_quota_data**) ; 
 int FUNC4 (struct gfs2_sbd*,struct gfs2_quota_data**) ; 
 int /*<<< orphan*/  FUNC5 (struct gfs2_quota_data*) ; 

int FUNC6(struct super_block *sb, int type)
{
	struct gfs2_sbd *sdp = sb->s_fs_info;
	struct gfs2_quota_data **qda;
	unsigned int max_qd = FUNC1(sdp, gt_quota_simul_sync);
	unsigned int num_qd;
	unsigned int x;
	int error = 0;

	sdp->sd_quota_sync_gen++;

	qda = FUNC2(max_qd, sizeof(struct gfs2_quota_data *), GFP_KERNEL);
	if (!qda)
		return -ENOMEM;

	do {
		num_qd = 0;

		for (;;) {
			error = FUNC4(sdp, qda + num_qd);
			if (error || !qda[num_qd])
				break;
			if (++num_qd == max_qd)
				break;
		}

		if (num_qd) {
			if (!error)
				error = FUNC0(num_qd, qda);
			if (!error)
				for (x = 0; x < num_qd; x++)
					qda[x]->qd_sync_gen =
						sdp->sd_quota_sync_gen;

			for (x = 0; x < num_qd; x++)
				FUNC5(qda[x]);
		}
	} while (!error && num_qd == max_qd);

	FUNC3(qda);

	return error;
}