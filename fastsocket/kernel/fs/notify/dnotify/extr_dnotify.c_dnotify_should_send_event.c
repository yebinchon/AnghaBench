
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_lock; int i_mode; } ;
struct fsnotify_mark_entry {int mask; } ;
struct fsnotify_group {int dummy; } ;
typedef int __u32 ;


 int FS_EVENT_ON_CHILD ;
 int S_ISDIR (int ) ;
 struct fsnotify_mark_entry* fsnotify_find_mark_entry (struct fsnotify_group*,struct inode*) ;
 int fsnotify_put_mark (struct fsnotify_mark_entry*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static bool dnotify_should_send_event(struct fsnotify_group *group,
          struct inode *inode, __u32 mask)
{
 struct fsnotify_mark_entry *entry;
 bool send;






 if (!S_ISDIR(inode->i_mode))
  return 0;

 spin_lock(&inode->i_lock);
 entry = fsnotify_find_mark_entry(group, inode);
 spin_unlock(&inode->i_lock);


 if (!entry)
  return 0;

 mask = (mask & ~FS_EVENT_ON_CHILD);
 send = (mask & entry->mask);

 fsnotify_put_mark(entry);

 return send;
}
