
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dentry {int dummy; } ;


 int d_move_locked (struct dentry*,struct dentry*) ;
 int dcache_lock ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void d_move(struct dentry * dentry, struct dentry * target)
{
 spin_lock(&dcache_lock);
 d_move_locked(dentry, target);
 spin_unlock(&dcache_lock);
}
