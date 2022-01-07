
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lm_lockstruct {int * ls_dlm; } ;
struct gfs2_sbd {struct lm_lockstruct sd_lockstruct; } ;


 int dlm_release_lockspace (int *,int) ;

__attribute__((used)) static void gdlm_unmount(struct gfs2_sbd *sdp)
{
 struct lm_lockstruct *ls = &sdp->sd_lockstruct;

 if (ls->ls_dlm) {
  dlm_release_lockspace(ls->ls_dlm, 2);
  ls->ls_dlm = ((void*)0);
 }
}
