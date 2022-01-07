
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cgroupfs_root {scalar_t__ hierarchy_id; } ;


 int BUG_ON (int) ;
 int EAGAIN ;
 int ENOSPC ;
 int GFP_KERNEL ;
 int hierarchy_id_lock ;
 int hierarchy_ida ;
 int ida_get_new (int *,scalar_t__*) ;
 int ida_get_new_above (int *,scalar_t__,scalar_t__*) ;
 int ida_pre_get (int *,int ) ;
 scalar_t__ next_hierarchy_id ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static bool init_root_id(struct cgroupfs_root *root)
{
 int ret = 0;

 do {
  if (!ida_pre_get(&hierarchy_ida, GFP_KERNEL))
   return 0;
  spin_lock(&hierarchy_id_lock);

  ret = ida_get_new_above(&hierarchy_ida, next_hierarchy_id,
     &root->hierarchy_id);
  if (ret == -ENOSPC)

   ret = ida_get_new(&hierarchy_ida, &root->hierarchy_id);
  if (!ret) {
   next_hierarchy_id = root->hierarchy_id + 1;
  } else if (ret != -EAGAIN) {

   BUG_ON(ret);
  }
  spin_unlock(&hierarchy_id_lock);
 } while (ret);
 return 1;
}
