
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cgroupfs_root {int hierarchy_id; } ;


 int BUG_ON (int) ;
 int hierarchy_id_lock ;
 int hierarchy_ida ;
 int ida_remove (int *,int ) ;
 int kfree (struct cgroupfs_root*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void cgroup_drop_root(struct cgroupfs_root *root)
{
 if (!root)
  return;

 BUG_ON(!root->hierarchy_id);
 spin_lock(&hierarchy_id_lock);
 ida_remove(&hierarchy_ida, root->hierarchy_id);
 spin_unlock(&hierarchy_id_lock);
 kfree(root);
}
