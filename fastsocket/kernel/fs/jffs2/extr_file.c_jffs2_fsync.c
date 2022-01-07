
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct jffs2_sb_info {int dummy; } ;
struct inode {int i_ino; int i_sb; } ;
struct file {int dummy; } ;
struct dentry {struct inode* d_inode; } ;


 struct jffs2_sb_info* JFFS2_SB_INFO (int ) ;
 int jffs2_flush_wbuf_gc (struct jffs2_sb_info*,int ) ;

int jffs2_fsync(struct file *filp, struct dentry *dentry, int datasync)
{
 struct inode *inode = dentry->d_inode;
 struct jffs2_sb_info *c = JFFS2_SB_INFO(inode->i_sb);


 jffs2_flush_wbuf_gc(c, inode->i_ino);

 return 0;
}
