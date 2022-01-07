
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gfs2_sbd {TYPE_1__* sd_vfs; } ;
struct gfs2_inode {int dummy; } ;
struct gfs2_glock {scalar_t__ gl_demote_state; scalar_t__ gl_state; int gl_delete; struct gfs2_sbd* gl_sbd; scalar_t__ gl_object; } ;
struct TYPE_2__ {int s_flags; } ;


 scalar_t__ LM_ST_SHARED ;
 scalar_t__ LM_ST_UNLOCKED ;
 int MS_RDONLY ;
 int gfs2_delete_workqueue ;
 int gfs2_glock_hold (struct gfs2_glock*) ;
 int gfs2_glock_put_nolock (struct gfs2_glock*) ;
 scalar_t__ queue_work (int ,int *) ;

__attribute__((used)) static void iopen_go_callback(struct gfs2_glock *gl, bool remote)
{
 struct gfs2_inode *ip = (struct gfs2_inode *)gl->gl_object;
 struct gfs2_sbd *sdp = gl->gl_sbd;

 if (!remote || (sdp->sd_vfs->s_flags & MS_RDONLY))
  return;

 if (gl->gl_demote_state == LM_ST_UNLOCKED &&
     gl->gl_state == LM_ST_SHARED && ip) {
  gfs2_glock_hold(gl);
  if (queue_work(gfs2_delete_workqueue, &gl->gl_delete) == 0)
   gfs2_glock_put_nolock(gl);
 }
}
