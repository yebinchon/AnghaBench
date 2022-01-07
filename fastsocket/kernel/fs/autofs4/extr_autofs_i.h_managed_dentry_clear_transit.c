
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dentry {int d_lock; } ;


 int __managed_dentry_clear_transit (struct dentry*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static inline void managed_dentry_clear_transit(struct dentry *dentry)
{
 spin_lock(&dentry->d_lock);
 __managed_dentry_clear_transit(dentry);
 spin_unlock(&dentry->d_lock);
}
