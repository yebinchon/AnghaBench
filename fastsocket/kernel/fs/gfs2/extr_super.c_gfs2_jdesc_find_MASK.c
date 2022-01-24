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
struct gfs2_sbd {int /*<<< orphan*/  sd_jindex_spin; int /*<<< orphan*/  sd_jindex_list; } ;
struct gfs2_jdesc {int dummy; } ;

/* Variables and functions */
 struct gfs2_jdesc* FUNC0 (int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

struct gfs2_jdesc *FUNC3(struct gfs2_sbd *sdp, unsigned int jid)
{
	struct gfs2_jdesc *jd;

	FUNC1(&sdp->sd_jindex_spin);
	jd = FUNC0(&sdp->sd_jindex_list, jid);
	FUNC2(&sdp->sd_jindex_spin);

	return jd;
}