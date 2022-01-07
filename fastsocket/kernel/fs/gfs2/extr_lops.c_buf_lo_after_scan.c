
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gfs2_sbd {int sd_found_blocks; int sd_replayed_blocks; } ;
struct gfs2_jdesc {int jd_jid; int jd_inode; } ;
struct gfs2_inode {int i_gl; } ;


 struct gfs2_inode* GFS2_I (int ) ;
 struct gfs2_sbd* GFS2_SB (int ) ;
 int fs_info (struct gfs2_sbd*,char*,int ,int ,int ) ;
 int gfs2_meta_sync (int ) ;

__attribute__((used)) static void buf_lo_after_scan(struct gfs2_jdesc *jd, int error, int pass)
{
 struct gfs2_inode *ip = GFS2_I(jd->jd_inode);
 struct gfs2_sbd *sdp = GFS2_SB(jd->jd_inode);

 if (error) {
  gfs2_meta_sync(ip->i_gl);
  return;
 }
 if (pass != 1)
  return;

 gfs2_meta_sync(ip->i_gl);

 fs_info(sdp, "jid=%u: Replayed %u of %u blocks\n",
         jd->jd_jid, sdp->sd_replayed_blocks, sdp->sd_found_blocks);
}
