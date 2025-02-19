
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_state; int i_mapping; } ;
struct gfs2_inode {int i_gl; } ;
struct file {int dummy; } ;
struct dentry {struct inode* d_inode; } ;


 struct gfs2_inode* GFS2_I (struct inode*) ;
 int I_DIRTY ;
 int I_DIRTY_PAGES ;
 int I_DIRTY_SYNC ;
 int filemap_write_and_wait (int ) ;
 int gfs2_ail_flush (int ,int) ;
 scalar_t__ gfs2_is_jdata (struct gfs2_inode*) ;
 int sync_inode_metadata (struct inode*,int) ;

__attribute__((used)) static int gfs2_fsync(struct file *file, struct dentry *dentry, int datasync)
{
 struct inode *inode = dentry->d_inode;
 int sync_state = inode->i_state & I_DIRTY;
 struct gfs2_inode *ip = GFS2_I(inode);
 int ret;

 if (!gfs2_is_jdata(ip))
  sync_state &= ~I_DIRTY_PAGES;
 if (datasync)
  sync_state &= ~I_DIRTY_SYNC;

 if (sync_state) {
  ret = sync_inode_metadata(inode, 1);
  if (ret)
   return ret;
  if (gfs2_is_jdata(ip))
   filemap_write_and_wait(inode->i_mapping);
  gfs2_ail_flush(ip->i_gl, 1);
 }

 return 0;
}
