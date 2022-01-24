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
struct task_struct {int dummy; } ;
struct gfs2_sbd {struct task_struct* sd_logd_process; struct task_struct* sd_quotad_process; int /*<<< orphan*/  sd_log_flush_time; } ;

/* Variables and functions */
 int FUNC0 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC1 (struct gfs2_sbd*,char*,int) ; 
 int /*<<< orphan*/  gfs2_logd ; 
 int /*<<< orphan*/  gfs2_quotad ; 
 int /*<<< orphan*/  jiffies ; 
 struct task_struct* FUNC2 (int /*<<< orphan*/ ,struct gfs2_sbd*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct task_struct*) ; 

__attribute__((used)) static int FUNC4(struct gfs2_sbd *sdp, int undo)
{
	struct task_struct *p;
	int error = 0;

	if (undo)
		goto fail_quotad;

	sdp->sd_log_flush_time = jiffies;

	p = FUNC2(gfs2_logd, sdp, "gfs2_logd");
	error = FUNC0(p);
	if (error) {
		FUNC1(sdp, "can't start logd thread: %d\n", error);
		return error;
	}
	sdp->sd_logd_process = p;

	p = FUNC2(gfs2_quotad, sdp, "gfs2_quotad");
	error = FUNC0(p);
	if (error) {
		FUNC1(sdp, "can't start quotad thread: %d\n", error);
		goto fail;
	}
	sdp->sd_quotad_process = p;

	return 0;


fail_quotad:
	FUNC3(sdp->sd_quotad_process);
fail:
	FUNC3(sdp->sd_logd_process);
	return error;
}