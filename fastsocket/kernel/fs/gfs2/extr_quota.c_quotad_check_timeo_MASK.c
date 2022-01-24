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
struct gfs2_sbd {struct super_block* sd_vfs; int /*<<< orphan*/  sd_tune; } ;

/* Variables and functions */
 unsigned long HZ ; 
 unsigned long FUNC0 (int /*<<< orphan*/ *,unsigned int*) ; 
 int /*<<< orphan*/  FUNC1 (struct gfs2_sbd*,char const*,int) ; 

__attribute__((used)) static void FUNC2(struct gfs2_sbd *sdp, const char *msg,
			       int (*fxn)(struct super_block *sb, int type),
			       unsigned long t, unsigned long *timeo,
			       unsigned int *new_timeo)
{
	if (t >= *timeo) {
		int error = fxn(sdp->sd_vfs, 0);
		FUNC1(sdp, msg, error);
		*timeo = FUNC0(&sdp->sd_tune, new_timeo) * HZ;
	} else {
		*timeo -= t;
	}
}