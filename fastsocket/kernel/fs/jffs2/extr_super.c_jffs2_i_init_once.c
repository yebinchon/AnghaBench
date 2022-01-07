
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct jffs2_inode_info {int vfs_inode; int sem; } ;


 int inode_init_once (int *) ;
 int mutex_init (int *) ;

__attribute__((used)) static void jffs2_i_init_once(void *foo)
{
 struct jffs2_inode_info *f = foo;

 mutex_init(&f->sem);
 inode_init_once(&f->vfs_inode);
}
