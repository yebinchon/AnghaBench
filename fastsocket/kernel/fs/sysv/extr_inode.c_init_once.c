
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sysv_inode_info {int vfs_inode; } ;


 int inode_init_once (int *) ;

__attribute__((used)) static void init_once(void *p)
{
 struct sysv_inode_info *si = (struct sysv_inode_info *)p;

 inode_init_once(&si->vfs_inode);
}
