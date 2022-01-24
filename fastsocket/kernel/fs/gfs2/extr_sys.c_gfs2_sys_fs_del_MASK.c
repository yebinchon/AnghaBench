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
struct gfs2_sbd {int /*<<< orphan*/  sd_kobj; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  lock_module_group ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  tune_group ; 

void FUNC3(struct gfs2_sbd *sdp)
{
	FUNC2(&sdp->sd_kobj, "device");
	FUNC1(&sdp->sd_kobj, &tune_group);
	FUNC1(&sdp->sd_kobj, &lock_module_group);
	FUNC0(&sdp->sd_kobj);
}