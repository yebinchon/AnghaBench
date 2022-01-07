
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dccp_feat_entry {int val; int feat_num; } ;


 int dccp_feat_val_destructor (int ,int *) ;
 int kfree (struct dccp_feat_entry*) ;

__attribute__((used)) static void dccp_feat_entry_destructor(struct dccp_feat_entry *entry)
{
 if (entry != ((void*)0)) {
  dccp_feat_val_destructor(entry->feat_num, &entry->val);
  kfree(entry);
 }
}
