
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gfs2_statfs_change_host {int dummy; } ;
struct TYPE_2__ {scalar_t__ ar_spectator; } ;
struct gfs2_sbd {int sd_statfs_spin; TYPE_1__ sd_args; struct gfs2_statfs_change_host sd_statfs_local; int sd_sc_inode; struct gfs2_statfs_change_host sd_statfs_master; int sd_statfs_inode; } ;
struct gfs2_inode {int i_gl; } ;
struct gfs2_holder {int dummy; } ;
struct gfs2_dinode {int dummy; } ;
struct buffer_head {scalar_t__ b_data; } ;


 struct gfs2_inode* GFS2_I (int ) ;
 int GL_NOCACHE ;
 int LM_ST_EXCLUSIVE ;
 int brelse (struct buffer_head*) ;
 int gfs2_glock_dq_uninit (struct gfs2_holder*) ;
 int gfs2_glock_nq_init (int ,int ,int ,struct gfs2_holder*) ;
 int gfs2_meta_inode_buffer (struct gfs2_inode*,struct buffer_head**) ;
 int gfs2_statfs_change_in (struct gfs2_statfs_change_host*,scalar_t__) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

int gfs2_statfs_init(struct gfs2_sbd *sdp)
{
 struct gfs2_inode *m_ip = GFS2_I(sdp->sd_statfs_inode);
 struct gfs2_statfs_change_host *m_sc = &sdp->sd_statfs_master;
 struct gfs2_inode *l_ip = GFS2_I(sdp->sd_sc_inode);
 struct gfs2_statfs_change_host *l_sc = &sdp->sd_statfs_local;
 struct buffer_head *m_bh, *l_bh;
 struct gfs2_holder gh;
 int error;

 error = gfs2_glock_nq_init(m_ip->i_gl, LM_ST_EXCLUSIVE, GL_NOCACHE,
       &gh);
 if (error)
  return error;

 error = gfs2_meta_inode_buffer(m_ip, &m_bh);
 if (error)
  goto out;

 if (sdp->sd_args.ar_spectator) {
  spin_lock(&sdp->sd_statfs_spin);
  gfs2_statfs_change_in(m_sc, m_bh->b_data +
          sizeof(struct gfs2_dinode));
  spin_unlock(&sdp->sd_statfs_spin);
 } else {
  error = gfs2_meta_inode_buffer(l_ip, &l_bh);
  if (error)
   goto out_m_bh;

  spin_lock(&sdp->sd_statfs_spin);
  gfs2_statfs_change_in(m_sc, m_bh->b_data +
          sizeof(struct gfs2_dinode));
  gfs2_statfs_change_in(l_sc, l_bh->b_data +
          sizeof(struct gfs2_dinode));
  spin_unlock(&sdp->sd_statfs_spin);

  brelse(l_bh);
 }

out_m_bh:
 brelse(m_bh);
out:
 gfs2_glock_dq_uninit(&gh);
 return 0;
}
