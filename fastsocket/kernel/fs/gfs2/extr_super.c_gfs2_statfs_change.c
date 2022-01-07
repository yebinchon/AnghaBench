
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gfs2_statfs_change_host {int sc_free; int sc_dinodes; int sc_total; } ;
struct TYPE_2__ {int ar_statfs_percent; } ;
struct gfs2_sbd {int sd_statfs_spin; TYPE_1__ sd_args; struct gfs2_statfs_change_host sd_statfs_master; struct gfs2_statfs_change_host sd_statfs_local; int sd_sc_inode; } ;
struct gfs2_inode {int i_gl; } ;
struct gfs2_dinode {int dummy; } ;
struct buffer_head {scalar_t__ b_data; } ;
typedef int s64 ;


 struct gfs2_inode* GFS2_I (int ) ;
 int brelse (struct buffer_head*) ;
 int gfs2_meta_inode_buffer (struct gfs2_inode*,struct buffer_head**) ;
 int gfs2_statfs_change_out (struct gfs2_statfs_change_host*,scalar_t__) ;
 int gfs2_trans_add_meta (int ,struct buffer_head*) ;
 int gfs2_wake_up_statfs (struct gfs2_sbd*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void gfs2_statfs_change(struct gfs2_sbd *sdp, s64 total, s64 free,
   s64 dinodes)
{
 struct gfs2_inode *l_ip = GFS2_I(sdp->sd_sc_inode);
 struct gfs2_statfs_change_host *l_sc = &sdp->sd_statfs_local;
 struct gfs2_statfs_change_host *m_sc = &sdp->sd_statfs_master;
 struct buffer_head *l_bh;
 s64 x, y;
 int need_sync = 0;
 int error;

 error = gfs2_meta_inode_buffer(l_ip, &l_bh);
 if (error)
  return;

 gfs2_trans_add_meta(l_ip->i_gl, l_bh);

 spin_lock(&sdp->sd_statfs_spin);
 l_sc->sc_total += total;
 l_sc->sc_free += free;
 l_sc->sc_dinodes += dinodes;
 gfs2_statfs_change_out(l_sc, l_bh->b_data + sizeof(struct gfs2_dinode));
 if (sdp->sd_args.ar_statfs_percent) {
  x = 100 * l_sc->sc_free;
  y = m_sc->sc_free * sdp->sd_args.ar_statfs_percent;
  if (x >= y || x <= -y)
   need_sync = 1;
 }
 spin_unlock(&sdp->sd_statfs_spin);

 brelse(l_bh);
 if (need_sync)
  gfs2_wake_up_statfs(sdp);
}
