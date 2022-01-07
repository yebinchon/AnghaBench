
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ocfs2_dx_entry_list {TYPE_1__* de_entries; int de_num_used; } ;
struct ocfs2_dx_leaf {struct ocfs2_dx_entry_list dl_list; } ;
struct TYPE_2__ {int dx_major_hash; } ;


 int le16_to_cpu (int ) ;
 scalar_t__ le32_to_cpu (int ) ;

__attribute__((used)) static int ocfs2_dx_leaf_same_major(struct ocfs2_dx_leaf *dx_leaf)
{
 struct ocfs2_dx_entry_list *dl_list = &dx_leaf->dl_list;
 int i, num = le16_to_cpu(dl_list->de_num_used);

 for (i = 0; i < (num - 1); i++) {
  if (le32_to_cpu(dl_list->de_entries[i].dx_major_hash) !=
      le32_to_cpu(dl_list->de_entries[i + 1].dx_major_hash))
   return 0;
 }

 return 1;
}
