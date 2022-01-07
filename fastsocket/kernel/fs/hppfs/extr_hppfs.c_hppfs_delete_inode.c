
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct inode {TYPE_1__* i_sb; } ;
struct TYPE_4__ {int proc_dentry; } ;
struct TYPE_3__ {int s_fs_info; } ;


 TYPE_2__* HPPFS_I (struct inode*) ;
 int clear_inode (struct inode*) ;
 int dput (int ) ;
 int mntput (int ) ;

void hppfs_delete_inode(struct inode *ino)
{
 dput(HPPFS_I(ino)->proc_dentry);
 mntput(ino->i_sb->s_fs_info);

 clear_inode(ino);
}
