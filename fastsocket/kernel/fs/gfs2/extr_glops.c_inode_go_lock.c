
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gfs2_sbd {int sd_quota_wait; int sd_trunc_lock; int sd_trunc_list; } ;
struct gfs2_inode {int i_diskflags; int i_trunc_list; int i_flags; } ;
struct gfs2_holder {int gh_flags; scalar_t__ gh_state; struct gfs2_glock* gh_gl; } ;
struct gfs2_glock {scalar_t__ gl_state; struct gfs2_inode* gl_object; struct gfs2_sbd* gl_sbd; } ;


 int GFS2_DIF_TRUNC_IN_PROG ;
 int GIF_INVALID ;
 int GL_SKIP ;
 scalar_t__ LM_ST_EXCLUSIVE ;
 int gfs2_inode_refresh (struct gfs2_inode*) ;
 int list_add (int *,int *) ;
 scalar_t__ list_empty (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ test_bit (int ,int *) ;
 int wake_up (int *) ;

__attribute__((used)) static int inode_go_lock(struct gfs2_holder *gh)
{
 struct gfs2_glock *gl = gh->gh_gl;
 struct gfs2_sbd *sdp = gl->gl_sbd;
 struct gfs2_inode *ip = gl->gl_object;
 int error = 0;

 if (!ip || (gh->gh_flags & GL_SKIP))
  return 0;

 if (test_bit(GIF_INVALID, &ip->i_flags)) {
  error = gfs2_inode_refresh(ip);
  if (error)
   return error;
 }

 if ((ip->i_diskflags & GFS2_DIF_TRUNC_IN_PROG) &&
     (gl->gl_state == LM_ST_EXCLUSIVE) &&
     (gh->gh_state == LM_ST_EXCLUSIVE)) {
  spin_lock(&sdp->sd_trunc_lock);
  if (list_empty(&ip->i_trunc_list))
   list_add(&sdp->sd_trunc_list, &ip->i_trunc_list);
  spin_unlock(&sdp->sd_trunc_lock);
  wake_up(&sdp->sd_quota_wait);
  return 1;
 }

 return error;
}
