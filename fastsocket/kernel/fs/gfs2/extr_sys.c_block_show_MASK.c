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
struct lm_lockstruct {int /*<<< orphan*/  ls_flags; } ;
struct gfs2_sbd {struct lm_lockstruct sd_lockstruct; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  DFL_BLOCK_LOCKS ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static ssize_t FUNC2(struct gfs2_sbd *sdp, char *buf)
{
	struct lm_lockstruct *ls = &sdp->sd_lockstruct;
	ssize_t ret;
	int val = 0;

	if (FUNC1(DFL_BLOCK_LOCKS, &ls->ls_flags))
		val = 1;
	ret = FUNC0(buf, "%d\n", val);
	return ret;
}