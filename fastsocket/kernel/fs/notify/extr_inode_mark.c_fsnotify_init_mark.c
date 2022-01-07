
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fsnotify_mark_entry {void (* free_mark ) (struct fsnotify_mark_entry*) ;int * inode; scalar_t__ mask; int * group; int i_list; int refcnt; int lock; } ;


 int INIT_HLIST_NODE (int *) ;
 int atomic_set (int *,int) ;
 int spin_lock_init (int *) ;

void fsnotify_init_mark(struct fsnotify_mark_entry *entry,
   void (*free_mark)(struct fsnotify_mark_entry *entry))

{
 spin_lock_init(&entry->lock);
 atomic_set(&entry->refcnt, 1);
 INIT_HLIST_NODE(&entry->i_list);
 entry->group = ((void*)0);
 entry->mask = 0;
 entry->inode = ((void*)0);
 entry->free_mark = free_mark;
}
