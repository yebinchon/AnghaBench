
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inotify_inode_mark_entry {int dummy; } ;
struct fsnotify_mark_entry {int dummy; } ;


 int inotify_inode_mark_cachep ;
 int kmem_cache_free (int ,struct inotify_inode_mark_entry*) ;

__attribute__((used)) static void inotify_free_mark(struct fsnotify_mark_entry *entry)
{
 struct inotify_inode_mark_entry *ientry = (struct inotify_inode_mark_entry *)entry;

 kmem_cache_free(inotify_inode_mark_cachep, ientry);
}
