
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct ocfs2_dx_entry_list {TYPE_1__* de_entries; int de_num_used; } ;
struct ocfs2_dx_leaf {struct ocfs2_dx_entry_list dl_list; } ;
struct TYPE_2__ {int dx_major_hash; } ;


 int BUG_ON (int) ;
 int ENOSPC ;
 int le16_to_cpu (int ) ;
 scalar_t__ le32_to_cpu (int ) ;
 int ocfs2_dx_leaf_same_major (struct ocfs2_dx_leaf*) ;

__attribute__((used)) static int ocfs2_dx_dir_find_leaf_split(struct ocfs2_dx_leaf *dx_leaf,
     u32 leaf_cpos, u32 insert_hash,
     u32 *split_hash)
{
 struct ocfs2_dx_entry_list *dl_list = &dx_leaf->dl_list;
 int i, num_used = le16_to_cpu(dl_list->de_num_used);
 int allsame;
 allsame = ocfs2_dx_leaf_same_major(dx_leaf);
 if (allsame) {
  u32 val = le32_to_cpu(dl_list->de_entries[0].dx_major_hash);

  if (val == insert_hash) {







   return -ENOSPC;
  }

  if (val == leaf_cpos) {
   *split_hash = leaf_cpos + 1;
   return 0;
  }

  if (val > insert_hash) {







   *split_hash = val;
   return 0;
  }

  *split_hash = insert_hash;
  return 0;
 }







 for (i = (num_used / 2); i < num_used; i++)
  if (le32_to_cpu(dl_list->de_entries[i].dx_major_hash) >
      leaf_cpos)
   break;

 BUG_ON(i == num_used);
 *split_hash = le32_to_cpu(dl_list->de_entries[i].dx_major_hash);
 return 0;
}
