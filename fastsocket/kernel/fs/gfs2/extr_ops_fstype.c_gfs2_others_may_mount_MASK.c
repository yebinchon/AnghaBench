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
struct lm_lockstruct {int ls_first_done; } ;
struct gfs2_sbd {int /*<<< orphan*/  sd_kobj; struct lm_lockstruct sd_lockstruct; } ;

/* Variables and functions */
 int /*<<< orphan*/  KOBJ_CHANGE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char**) ; 

__attribute__((used)) static void FUNC1(struct gfs2_sbd *sdp)
{
	char *message = "FIRSTMOUNT=Done";
	char *envp[] = { message, NULL };
	struct lm_lockstruct *ls = &sdp->sd_lockstruct;
	ls->ls_first_done = 1;
	FUNC0(&sdp->sd_kobj, KOBJ_CHANGE, envp);
}