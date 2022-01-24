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
struct lm_lockstruct {unsigned int ls_recover_jid_done; unsigned int ls_recover_jid_status; } ;
struct gfs2_sbd {int /*<<< orphan*/  sd_kobj; struct lm_lockstruct sd_lockstruct; } ;

/* Variables and functions */
 int /*<<< orphan*/  KOBJ_CHANGE ; 
 unsigned int LM_RD_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char**) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,...) ; 

__attribute__((used)) static void FUNC2(struct gfs2_sbd *sdp, unsigned int jid,
                               unsigned int message)
{
	char env_jid[20];
	char env_status[20];
	char *envp[] = { env_jid, env_status, NULL };
	struct lm_lockstruct *ls = &sdp->sd_lockstruct;
        ls->ls_recover_jid_done = jid;
        ls->ls_recover_jid_status = message;
	FUNC1(env_jid, "JID=%d", jid);
	FUNC1(env_status, "RECOVERY=%s",
		message == LM_RD_SUCCESS ? "Done" : "Failed");
        FUNC0(&sdp->sd_kobj, KOBJ_CHANGE, envp);
}