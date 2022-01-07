
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct lm_lockstruct {int ls_dlm; } ;
struct TYPE_4__ {int sb_lkid; } ;
struct gfs2_glock {TYPE_2__ gl_lksb; TYPE_1__* gl_sbd; } ;
struct TYPE_3__ {struct lm_lockstruct sd_lockstruct; } ;


 int DLM_LKF_CANCEL ;
 int dlm_unlock (int ,int ,int ,int *,struct gfs2_glock*) ;

__attribute__((used)) static void gdlm_cancel(struct gfs2_glock *gl)
{
 struct lm_lockstruct *ls = &gl->gl_sbd->sd_lockstruct;
 dlm_unlock(ls->ls_dlm, gl->gl_lksb.sb_lkid, DLM_LKF_CANCEL, ((void*)0), gl);
}
