
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qstr {unsigned int len; } ;
struct inode {int dummy; } ;
struct gfs2_inode {int i_gl; } ;
struct gfs2_dirent {int de_rec_len; int de_name_len; } ;
struct buffer_head {int dummy; } ;


 int BUG_ON (int) ;
 unsigned int GFS2_DIRENT_SIZE (unsigned int) ;
 struct gfs2_inode* GFS2_I (struct inode*) ;
 unsigned int be16_to_cpu (int ) ;
 int cpu_to_be16 (unsigned int) ;
 int gfs2_dirent_sentinel (struct gfs2_dirent*) ;
 int gfs2_qstr2dirent (struct qstr const*,unsigned int,struct gfs2_dirent*) ;
 int gfs2_trans_add_meta (int ,struct buffer_head*) ;

__attribute__((used)) static struct gfs2_dirent *gfs2_init_dirent(struct inode *inode,
         struct gfs2_dirent *dent,
         const struct qstr *name,
         struct buffer_head *bh)
{
 struct gfs2_inode *ip = GFS2_I(inode);
 struct gfs2_dirent *ndent;
 unsigned offset = 0, totlen;

 if (!gfs2_dirent_sentinel(dent))
  offset = GFS2_DIRENT_SIZE(be16_to_cpu(dent->de_name_len));
 totlen = be16_to_cpu(dent->de_rec_len);
 BUG_ON(offset + name->len > totlen);
 gfs2_trans_add_meta(ip->i_gl, bh);
 ndent = (struct gfs2_dirent *)((char *)dent + offset);
 dent->de_rec_len = cpu_to_be16(offset);
 gfs2_qstr2dirent(name, totlen - offset, ndent);
 return ndent;
}
