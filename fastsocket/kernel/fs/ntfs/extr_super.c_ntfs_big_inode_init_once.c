
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ntfs_inode ;


 int VFS_I (int *) ;
 int inode_init_once (int ) ;

__attribute__((used)) static void ntfs_big_inode_init_once(void *foo)
{
 ntfs_inode *ni = (ntfs_inode *)foo;

 inode_init_once(VFS_I(ni));
}
