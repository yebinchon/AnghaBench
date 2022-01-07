
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int de_num_used; struct ocfs2_dx_entry* de_entries; } ;
struct ocfs2_dx_leaf {TYPE_1__ dl_list; } ;
struct ocfs2_dx_entry {int dummy; } ;


 int le16_add_cpu (int *,int) ;
 int le16_to_cpu (int ) ;

__attribute__((used)) static void ocfs2_dx_dir_leaf_insert_tail(struct ocfs2_dx_leaf *dx_leaf,
       struct ocfs2_dx_entry *dx_new_entry)
{
 int i;

 i = le16_to_cpu(dx_leaf->dl_list.de_num_used);
 dx_leaf->dl_list.de_entries[i] = *dx_new_entry;

 le16_add_cpu(&dx_leaf->dl_list.de_num_used, 1);
}
