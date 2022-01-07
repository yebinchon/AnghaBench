
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lm_lockstruct {unsigned int ls_recover_jid_done; unsigned int ls_recover_jid_status; } ;
struct gfs2_sbd {int sd_kobj; struct lm_lockstruct sd_lockstruct; } ;


 int KOBJ_CHANGE ;
 unsigned int LM_RD_SUCCESS ;
 int kobject_uevent_env (int *,int ,char**) ;
 int sprintf (char*,char*,...) ;

__attribute__((used)) static void gfs2_recovery_done(struct gfs2_sbd *sdp, unsigned int jid,
                               unsigned int message)
{
 char env_jid[20];
 char env_status[20];
 char *envp[] = { env_jid, env_status, ((void*)0) };
 struct lm_lockstruct *ls = &sdp->sd_lockstruct;
        ls->ls_recover_jid_done = jid;
        ls->ls_recover_jid_status = message;
 sprintf(env_jid, "JID=%d", jid);
 sprintf(env_status, "RECOVERY=%s",
  message == LM_RD_SUCCESS ? "Done" : "Failed");
        kobject_uevent_env(&sdp->sd_kobj, KOBJ_CHANGE, envp);
}
