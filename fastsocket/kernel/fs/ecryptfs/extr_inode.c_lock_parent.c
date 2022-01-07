
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dentry {TYPE_1__* d_inode; } ;
struct TYPE_2__ {int i_mutex; } ;


 int I_MUTEX_PARENT ;
 struct dentry* dget_parent (struct dentry*) ;
 int mutex_lock_nested (int *,int ) ;

__attribute__((used)) static struct dentry *lock_parent(struct dentry *dentry)
{
 struct dentry *dir;

 dir = dget_parent(dentry);
 mutex_lock_nested(&(dir->d_inode->i_mutex), I_MUTEX_PARENT);
 return dir;
}
