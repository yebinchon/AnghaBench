
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fsnotify_mark_entry {int (* free_mark ) (struct fsnotify_mark_entry*) ;int refcnt; } ;


 scalar_t__ atomic_dec_and_test (int *) ;
 int stub1 (struct fsnotify_mark_entry*) ;

void fsnotify_put_mark(struct fsnotify_mark_entry *entry)
{
 if (atomic_dec_and_test(&entry->refcnt))
  entry->free_mark(entry);
}
