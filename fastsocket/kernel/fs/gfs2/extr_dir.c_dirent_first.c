
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gfs2_meta_header {int mh_type; } ;
struct gfs2_leaf {int dummy; } ;
struct gfs2_inode {int i_inode; } ;
struct gfs2_dirent {int dummy; } ;
struct gfs2_dinode {int dummy; } ;
struct buffer_head {scalar_t__ b_data; } ;


 int EIO ;
 int GFS2_METATYPE_DI ;
 scalar_t__ GFS2_METATYPE_LF ;
 int GFS2_SB (int *) ;
 int IS_DINODE ;
 int IS_LEAF ;
 scalar_t__ be32_to_cpu (int ) ;
 scalar_t__ gfs2_meta_check (int ,struct buffer_head*) ;
 scalar_t__ gfs2_metatype_check (int ,struct buffer_head*,int ) ;

__attribute__((used)) static int dirent_first(struct gfs2_inode *dip, struct buffer_head *bh,
   struct gfs2_dirent **dent)
{
 struct gfs2_meta_header *h = (struct gfs2_meta_header *)bh->b_data;

 if (be32_to_cpu(h->mh_type) == GFS2_METATYPE_LF) {
  if (gfs2_meta_check(GFS2_SB(&dip->i_inode), bh))
   return -EIO;
  *dent = (struct gfs2_dirent *)(bh->b_data +
            sizeof(struct gfs2_leaf));
  return IS_LEAF;
 } else {
  if (gfs2_metatype_check(GFS2_SB(&dip->i_inode), bh, GFS2_METATYPE_DI))
   return -EIO;
  *dent = (struct gfs2_dirent *)(bh->b_data +
            sizeof(struct gfs2_dinode));
  return IS_DINODE;
 }
}
