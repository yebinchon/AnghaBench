
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ocfs2_dir_lookup_result {int dl_leaf_bh; int dl_entry; } ;
struct inode {int dummy; } ;
typedef int handle_t ;
struct TYPE_2__ {int ip_dyn_features; } ;


 TYPE_1__* OCFS2_I (struct inode*) ;
 int OCFS2_INLINE_DATA_FL ;
 int ocfs2_delete_entry_dx (int *,struct inode*,struct ocfs2_dir_lookup_result*) ;
 int ocfs2_delete_entry_el (int *,struct inode*,int ,int ) ;
 int ocfs2_delete_entry_id (int *,struct inode*,int ,int ) ;
 scalar_t__ ocfs2_dir_indexed (struct inode*) ;

int ocfs2_delete_entry(handle_t *handle,
         struct inode *dir,
         struct ocfs2_dir_lookup_result *res)
{
 if (ocfs2_dir_indexed(dir))
  return ocfs2_delete_entry_dx(handle, dir, res);

 if (OCFS2_I(dir)->ip_dyn_features & OCFS2_INLINE_DATA_FL)
  return ocfs2_delete_entry_id(handle, dir, res->dl_entry,
          res->dl_leaf_bh);

 return ocfs2_delete_entry_el(handle, dir, res->dl_entry,
         res->dl_leaf_bh);
}
