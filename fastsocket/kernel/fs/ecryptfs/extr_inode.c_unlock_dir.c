
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dentry {TYPE_1__* d_inode; } ;
struct TYPE_2__ {int i_mutex; } ;


 int dput (struct dentry*) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void unlock_dir(struct dentry *dir)
{
 mutex_unlock(&dir->d_inode->i_mutex);
 dput(dir);
}
