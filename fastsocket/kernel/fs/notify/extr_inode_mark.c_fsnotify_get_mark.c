
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fsnotify_mark_entry {int refcnt; } ;


 int atomic_inc (int *) ;

void fsnotify_get_mark(struct fsnotify_mark_entry *entry)
{
 atomic_inc(&entry->refcnt);
}
