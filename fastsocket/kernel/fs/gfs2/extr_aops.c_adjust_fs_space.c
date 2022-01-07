
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct inode {TYPE_1__* i_sb; } ;
struct gfs2_statfs_change_host {scalar_t__ sc_total; } ;
struct gfs2_sbd {int sd_statfs_spin; struct gfs2_statfs_change_host sd_statfs_local; struct gfs2_statfs_change_host sd_statfs_master; int sd_sc_inode; int sd_statfs_inode; } ;
struct gfs2_inode {int dummy; } ;
struct gfs2_dinode {int dummy; } ;
struct buffer_head {scalar_t__ b_data; } ;
struct TYPE_2__ {struct gfs2_sbd* s_fs_info; } ;


 struct gfs2_inode* GFS2_I (int ) ;
 int brelse (struct buffer_head*) ;
 int fs_warn (struct gfs2_sbd*,char*,unsigned long long) ;
 scalar_t__ gfs2_meta_inode_buffer (struct gfs2_inode*,struct buffer_head**) ;
 scalar_t__ gfs2_ri_total (struct gfs2_sbd*) ;
 int gfs2_statfs_change (struct gfs2_sbd*,scalar_t__,scalar_t__,int ) ;
 int gfs2_statfs_change_in (struct gfs2_statfs_change_host*,scalar_t__) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int update_statfs (struct gfs2_sbd*,struct buffer_head*,struct buffer_head*) ;

__attribute__((used)) static void adjust_fs_space(struct inode *inode)
{
 struct gfs2_sbd *sdp = inode->i_sb->s_fs_info;
 struct gfs2_inode *m_ip = GFS2_I(sdp->sd_statfs_inode);
 struct gfs2_inode *l_ip = GFS2_I(sdp->sd_sc_inode);
 struct gfs2_statfs_change_host *m_sc = &sdp->sd_statfs_master;
 struct gfs2_statfs_change_host *l_sc = &sdp->sd_statfs_local;
 struct buffer_head *m_bh, *l_bh;
 u64 fs_total, new_free;


 fs_total = gfs2_ri_total(sdp);
 if (gfs2_meta_inode_buffer(m_ip, &m_bh) != 0)
  return;

 spin_lock(&sdp->sd_statfs_spin);
 gfs2_statfs_change_in(m_sc, m_bh->b_data +
         sizeof(struct gfs2_dinode));
 if (fs_total > (m_sc->sc_total + l_sc->sc_total))
  new_free = fs_total - (m_sc->sc_total + l_sc->sc_total);
 else
  new_free = 0;
 spin_unlock(&sdp->sd_statfs_spin);
 fs_warn(sdp, "File system extended by %llu blocks.\n",
  (unsigned long long)new_free);
 gfs2_statfs_change(sdp, new_free, new_free, 0);

 if (gfs2_meta_inode_buffer(l_ip, &l_bh) != 0)
  goto out;
 update_statfs(sdp, m_bh, l_bh);
 brelse(l_bh);
out:
 brelse(m_bh);
}
