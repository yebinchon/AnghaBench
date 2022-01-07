
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int d_child; } ;
struct dentry {TYPE_1__ d_u; } ;


 int cgroup_clear_directory (struct dentry*) ;
 int dcache_lock ;
 int list_del_init (int *) ;
 int remove_dir (struct dentry*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void cgroup_d_remove_dir(struct dentry *dentry)
{
 cgroup_clear_directory(dentry);

 spin_lock(&dcache_lock);
 list_del_init(&dentry->d_u.d_child);
 spin_unlock(&dcache_lock);
 remove_dir(dentry);
}
