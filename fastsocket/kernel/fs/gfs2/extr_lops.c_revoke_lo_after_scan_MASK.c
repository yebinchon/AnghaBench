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
struct gfs2_sbd {int /*<<< orphan*/  sd_found_revokes; } ;
struct gfs2_jdesc {int /*<<< orphan*/  jd_jid; int /*<<< orphan*/  jd_inode; } ;

/* Variables and functions */
 struct gfs2_sbd* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct gfs2_sbd*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct gfs2_sbd*) ; 

__attribute__((used)) static void FUNC3(struct gfs2_jdesc *jd, int error, int pass)
{
	struct gfs2_sbd *sdp = FUNC0(jd->jd_inode);

	if (error) {
		FUNC2(sdp);
		return;
	}
	if (pass != 1)
		return;

	FUNC1(sdp, "jid=%u: Found %u revoke tags\n",
	        jd->jd_jid, sdp->sd_found_revokes);

	FUNC2(sdp);
}