
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gfs2_sbd {int dummy; } ;
struct gfs2_log_header_host {int lh_flags; } ;
struct gfs2_jdesc {int jd_jid; int jd_inode; } ;
struct gfs2_inode {int i_gl; } ;
struct gfs2_holder {int dummy; } ;


 int EPERM ;
 struct gfs2_inode* GFS2_I (int ) ;
 int GFS2_LOG_HEAD_UNMOUNT ;
 int GL_EXACT ;
 int GL_NOCACHE ;
 int LM_FLAG_NOEXP ;
 int LM_ST_SHARED ;
 int fs_err (struct gfs2_sbd*,char*,...) ;
 int gfs2_find_jhead (struct gfs2_jdesc*,struct gfs2_log_header_host*) ;
 int gfs2_glock_dq_uninit (struct gfs2_holder*) ;
 int gfs2_glock_nq_init (int ,int ,int,struct gfs2_holder*) ;
 int gfs2_jdesc_check (struct gfs2_jdesc*) ;

__attribute__((used)) static int check_journal_clean(struct gfs2_sbd *sdp, struct gfs2_jdesc *jd)
{
 int error;
 struct gfs2_holder j_gh;
 struct gfs2_log_header_host head;
 struct gfs2_inode *ip;

 ip = GFS2_I(jd->jd_inode);
 error = gfs2_glock_nq_init(ip->i_gl, LM_ST_SHARED, LM_FLAG_NOEXP |
       GL_EXACT | GL_NOCACHE, &j_gh);
 if (error) {
  fs_err(sdp, "Error locking journal for spectator mount.\n");
  return -EPERM;
 }
 error = gfs2_jdesc_check(jd);
 if (error) {
  fs_err(sdp, "Error checking journal for spectator mount.\n");
  goto out_unlock;
 }
 error = gfs2_find_jhead(jd, &head);
 if (error) {
  fs_err(sdp, "Error parsing journal for spectator mount.\n");
  goto out_unlock;
 }
 if (!(head.lh_flags & GFS2_LOG_HEAD_UNMOUNT)) {
  error = -EPERM;
  fs_err(sdp, "jid=%u: Journal is dirty, so the first mounter "
         "must not be a spectator.\n", jd->jd_jid);
 }

out_unlock:
 gfs2_glock_dq_uninit(&j_gh);
 return error;
}
