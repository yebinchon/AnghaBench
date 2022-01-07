
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct dentry {TYPE_2__* d_inode; } ;
struct TYPE_4__ {int i_mutex; TYPE_1__* i_sb; } ;
struct TYPE_3__ {int s_vfs_rename_mutex; } ;


 int I_MUTEX_CHILD ;
 int I_MUTEX_PARENT ;
 struct dentry* d_ancestor (struct dentry*,struct dentry*) ;
 int mutex_lock (int *) ;
 int mutex_lock_nested (int *,int ) ;

struct dentry *lock_rename(struct dentry *p1, struct dentry *p2)
{
 struct dentry *p;

 if (p1 == p2) {
  mutex_lock_nested(&p1->d_inode->i_mutex, I_MUTEX_PARENT);
  return ((void*)0);
 }

 mutex_lock(&p1->d_inode->i_sb->s_vfs_rename_mutex);

 p = d_ancestor(p2, p1);
 if (p) {
  mutex_lock_nested(&p2->d_inode->i_mutex, I_MUTEX_PARENT);
  mutex_lock_nested(&p1->d_inode->i_mutex, I_MUTEX_CHILD);
  return p;
 }

 p = d_ancestor(p1, p2);
 if (p) {
  mutex_lock_nested(&p1->d_inode->i_mutex, I_MUTEX_PARENT);
  mutex_lock_nested(&p2->d_inode->i_mutex, I_MUTEX_CHILD);
  return p;
 }

 mutex_lock_nested(&p1->d_inode->i_mutex, I_MUTEX_PARENT);
 mutex_lock_nested(&p2->d_inode->i_mutex, I_MUTEX_CHILD);
 return ((void*)0);
}
