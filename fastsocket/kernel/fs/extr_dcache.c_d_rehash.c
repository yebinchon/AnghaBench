
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dentry {int d_lock; } ;


 int _d_rehash (struct dentry*) ;
 int dcache_lock ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void d_rehash(struct dentry * entry)
{
 spin_lock(&dcache_lock);
 spin_lock(&entry->d_lock);
 _d_rehash(entry);
 spin_unlock(&entry->d_lock);
 spin_unlock(&dcache_lock);
}
