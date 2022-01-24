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
struct gfs2_sbd {int /*<<< orphan*/  sd_flags; } ;

/* Variables and functions */
 int EROFS ; 
 int /*<<< orphan*/  SDF_SHUTDOWN ; 
 int /*<<< orphan*/  FUNC0 (struct gfs2_sbd*,char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct gfs2_sbd *sdp, const char *msg, int error)
{
	if (error == 0 || error == -EROFS)
		return;
	if (!FUNC1(SDF_SHUTDOWN, &sdp->sd_flags))
		FUNC0(sdp, "gfs2_quotad: %s error %d\n", msg, error);
}