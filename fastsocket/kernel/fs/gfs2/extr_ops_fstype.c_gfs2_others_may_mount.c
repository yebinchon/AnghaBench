
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lm_lockstruct {int ls_first_done; } ;
struct gfs2_sbd {int sd_kobj; struct lm_lockstruct sd_lockstruct; } ;


 int KOBJ_CHANGE ;
 int kobject_uevent_env (int *,int ,char**) ;

__attribute__((used)) static void gfs2_others_may_mount(struct gfs2_sbd *sdp)
{
 char *message = "FIRSTMOUNT=Done";
 char *envp[] = { message, ((void*)0) };
 struct lm_lockstruct *ls = &sdp->sd_lockstruct;
 ls->ls_first_done = 1;
 kobject_uevent_env(&sdp->sd_kobj, KOBJ_CHANGE, envp);
}
