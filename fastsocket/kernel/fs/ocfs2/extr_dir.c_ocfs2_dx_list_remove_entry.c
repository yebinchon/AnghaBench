
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_dx_entry_list {int de_num_used; int * de_entries; } ;
struct ocfs2_dx_entry {int dummy; } ;


 int cpu_to_le16 (int) ;
 int le16_to_cpu (int ) ;
 int memmove (int *,int *,int) ;
 int memset (int *,int ,int) ;

__attribute__((used)) static void ocfs2_dx_list_remove_entry(struct ocfs2_dx_entry_list *entry_list,
           int index)
{
 int num_used = le16_to_cpu(entry_list->de_num_used);

 if (num_used == 1 || index == (num_used - 1))
  goto clear;

 memmove(&entry_list->de_entries[index],
  &entry_list->de_entries[index + 1],
  (num_used - index - 1)*sizeof(struct ocfs2_dx_entry));
clear:
 num_used--;
 memset(&entry_list->de_entries[num_used], 0,
        sizeof(struct ocfs2_dx_entry));
 entry_list->de_num_used = cpu_to_le16(num_used);
}
