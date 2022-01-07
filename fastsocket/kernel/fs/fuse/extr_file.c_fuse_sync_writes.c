
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;


 int fuse_release_nowrite (struct inode*) ;
 int fuse_set_nowrite (struct inode*) ;

__attribute__((used)) static void fuse_sync_writes(struct inode *inode)
{
 fuse_set_nowrite(inode);
 fuse_release_nowrite(inode);
}
