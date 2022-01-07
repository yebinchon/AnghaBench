
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct dentry {TYPE_2__* d_inode; } ;
struct TYPE_4__ {TYPE_1__* i_sb; int i_mutex; } ;
struct TYPE_3__ {int s_vfs_rename_mutex; } ;


 int mutex_unlock (int *) ;

void unlock_rename(struct dentry *p1, struct dentry *p2)
{
 mutex_unlock(&p1->d_inode->i_mutex);
 if (p1 != p2) {
  mutex_unlock(&p2->d_inode->i_mutex);
  mutex_unlock(&p1->d_inode->i_sb->s_vfs_rename_mutex);
 }
}
