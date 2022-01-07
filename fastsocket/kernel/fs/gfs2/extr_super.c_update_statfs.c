
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gfs2_statfs_change_host {scalar_t__ sc_dinodes; scalar_t__ sc_free; scalar_t__ sc_total; } ;
struct gfs2_statfs_change {int dummy; } ;
struct gfs2_sbd {int sd_statfs_spin; struct gfs2_statfs_change_host sd_statfs_local; struct gfs2_statfs_change_host sd_statfs_master; int sd_sc_inode; int sd_statfs_inode; } ;
struct gfs2_inode {int i_gl; } ;
struct gfs2_dinode {int dummy; } ;
struct buffer_head {struct gfs2_statfs_change_host* b_data; } ;


 struct gfs2_inode* GFS2_I (int ) ;
 int gfs2_statfs_change_out (struct gfs2_statfs_change_host*,struct gfs2_statfs_change_host*) ;
 int gfs2_trans_add_meta (int ,struct buffer_head*) ;
 int memset (struct gfs2_statfs_change_host*,int ,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void update_statfs(struct gfs2_sbd *sdp, struct buffer_head *m_bh,
     struct buffer_head *l_bh)
{
 struct gfs2_inode *m_ip = GFS2_I(sdp->sd_statfs_inode);
 struct gfs2_inode *l_ip = GFS2_I(sdp->sd_sc_inode);
 struct gfs2_statfs_change_host *m_sc = &sdp->sd_statfs_master;
 struct gfs2_statfs_change_host *l_sc = &sdp->sd_statfs_local;

 gfs2_trans_add_meta(l_ip->i_gl, l_bh);

 spin_lock(&sdp->sd_statfs_spin);
 m_sc->sc_total += l_sc->sc_total;
 m_sc->sc_free += l_sc->sc_free;
 m_sc->sc_dinodes += l_sc->sc_dinodes;
 memset(l_sc, 0, sizeof(struct gfs2_statfs_change));
 memset(l_bh->b_data + sizeof(struct gfs2_dinode),
        0, sizeof(struct gfs2_statfs_change));
 spin_unlock(&sdp->sd_statfs_spin);

 gfs2_trans_add_meta(m_ip->i_gl, m_bh);
 gfs2_statfs_change_out(m_sc, m_bh->b_data + sizeof(struct gfs2_dinode));
}
