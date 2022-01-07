
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct fuse_inode {scalar_t__ writectr; } ;


 int BUG_ON (int) ;
 scalar_t__ FUSE_NOWRITE ;
 int fuse_flush_writepages (struct inode*) ;
 struct fuse_inode* get_fuse_inode (struct inode*) ;

__attribute__((used)) static void __fuse_release_nowrite(struct inode *inode)
{
 struct fuse_inode *fi = get_fuse_inode(inode);

 BUG_ON(fi->writectr != FUSE_NOWRITE);
 fi->writectr = 0;
 fuse_flush_writepages(inode);
}
