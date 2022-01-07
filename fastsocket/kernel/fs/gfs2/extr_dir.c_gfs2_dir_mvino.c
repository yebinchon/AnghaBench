
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qstr {int dummy; } ;
struct TYPE_2__ {int i_ctime; int i_mtime; } ;
struct gfs2_inode {int i_diskflags; TYPE_1__ i_inode; int i_gl; } ;
struct gfs2_dirent {int de_type; } ;
struct buffer_head {int b_data; } ;


 int CURRENT_TIME ;
 int EIO ;
 int GFS2_DIF_EXHASH ;
 scalar_t__ IS_ERR (struct gfs2_dirent*) ;
 int PTR_ERR (struct gfs2_dirent*) ;
 int brelse (struct buffer_head*) ;
 int cpu_to_be16 (unsigned int) ;
 int gfs2_consist_inode (struct gfs2_inode*) ;
 int gfs2_dinode_out (struct gfs2_inode*,int ) ;
 int gfs2_dirent_find ;
 struct gfs2_dirent* gfs2_dirent_search (TYPE_1__*,struct qstr const*,int ,struct buffer_head**) ;
 int gfs2_inum_out (struct gfs2_inode const*,struct gfs2_dirent*) ;
 int gfs2_meta_inode_buffer (struct gfs2_inode*,struct buffer_head**) ;
 int gfs2_trans_add_meta (int ,struct buffer_head*) ;

int gfs2_dir_mvino(struct gfs2_inode *dip, const struct qstr *filename,
     const struct gfs2_inode *nip, unsigned int new_type)
{
 struct buffer_head *bh;
 struct gfs2_dirent *dent;
 int error;

 dent = gfs2_dirent_search(&dip->i_inode, filename, gfs2_dirent_find, &bh);
 if (!dent) {
  gfs2_consist_inode(dip);
  return -EIO;
 }
 if (IS_ERR(dent))
  return PTR_ERR(dent);

 gfs2_trans_add_meta(dip->i_gl, bh);
 gfs2_inum_out(nip, dent);
 dent->de_type = cpu_to_be16(new_type);

 if (dip->i_diskflags & GFS2_DIF_EXHASH) {
  brelse(bh);
  error = gfs2_meta_inode_buffer(dip, &bh);
  if (error)
   return error;
  gfs2_trans_add_meta(dip->i_gl, bh);
 }

 dip->i_inode.i_mtime = dip->i_inode.i_ctime = CURRENT_TIME;
 gfs2_dinode_out(dip, bh->b_data);
 brelse(bh);
 return 0;
}
