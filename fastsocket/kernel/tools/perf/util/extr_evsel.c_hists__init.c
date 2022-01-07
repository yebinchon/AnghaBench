
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hists {int lock; void* entries; void* entries_collapsed; void** entries_in_array; void** entries_in; } ;


 void* RB_ROOT ;
 int memset (struct hists*,int ,int) ;
 int pthread_mutex_init (int *,int *) ;

void hists__init(struct hists *hists)
{
 memset(hists, 0, sizeof(*hists));
 hists->entries_in_array[0] = hists->entries_in_array[1] = RB_ROOT;
 hists->entries_in = &hists->entries_in_array[0];
 hists->entries_collapsed = RB_ROOT;
 hists->entries = RB_ROOT;
 pthread_mutex_init(&hists->lock, ((void*)0));
}
