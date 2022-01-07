
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {struct gfs2_sbd* s_fs_info; } ;
struct inode {int * d_op; } ;
struct gfs2_sbd {int dummy; } ;
struct gfs2_inum_host {int no_addr; int no_formal_ino; } ;
struct dentry {int * d_op; } ;
struct TYPE_2__ {int i_no_formal_ino; } ;


 int ENOENT ;
 struct inode* ERR_CAST (struct inode*) ;
 struct inode* ERR_PTR (int ) ;
 int ESTALE ;
 int GFS2_BLKST_DINODE ;
 TYPE_1__* GFS2_I (struct inode*) ;
 scalar_t__ IS_ERR (struct inode*) ;
 struct inode* d_obtain_alias (struct inode*) ;
 int gfs2_dops ;
 struct inode* gfs2_ilookup (struct super_block*,int ,int ) ;
 struct inode* gfs2_lookup_by_inum (struct gfs2_sbd*,int ,int *,int ) ;
 int iput (struct inode*) ;

__attribute__((used)) static struct dentry *gfs2_get_dentry(struct super_block *sb,
          struct gfs2_inum_host *inum)
{
 struct gfs2_sbd *sdp = sb->s_fs_info;
 struct inode *inode;
 struct dentry *dentry;

 inode = gfs2_ilookup(sb, inum->no_addr, 0);
 if (inode) {
  if (GFS2_I(inode)->i_no_formal_ino != inum->no_formal_ino) {
   iput(inode);
   return ERR_PTR(-ESTALE);
  }
 } else {
  inode = gfs2_lookup_by_inum(sdp, inum->no_addr,
         &inum->no_formal_ino,
         GFS2_BLKST_DINODE);
  if (inode == ERR_PTR(-ENOENT))
   inode = gfs2_ilookup(sb, inum->no_addr, 0);
 }

 if (IS_ERR(inode))
  return ERR_CAST(inode);

 dentry = d_obtain_alias(inode);
 if (!IS_ERR(dentry))
  dentry->d_op = &gfs2_dops;
 return dentry;
}
