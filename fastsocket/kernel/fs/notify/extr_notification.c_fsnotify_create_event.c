
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct path {int * mnt; int * dentry; } ;
struct inode {int dummy; } ;
struct TYPE_2__ {int * mnt; int * dentry; } ;
struct fsnotify_event {int data_type; int mask; TYPE_1__ path; int * inode; struct inode* to_tell; int sync_cookie; int file_name; int name_len; } ;
struct file {struct path f_path; } ;
typedef int gfp_t ;
typedef int __u32 ;


 int BUG () ;




 int fsnotify_event_cachep ;
 int initialize_event (struct fsnotify_event*) ;
 struct fsnotify_event* kmem_cache_alloc (int ,int ) ;
 int kmem_cache_free (int ,struct fsnotify_event*) ;
 int kstrdup (char const*,int ) ;
 int path_get (TYPE_1__*) ;
 int strlen (int ) ;

struct fsnotify_event *fsnotify_create_event(struct inode *to_tell, __u32 mask, void *data,
          int data_type, const char *name, u32 cookie,
          gfp_t gfp)
{
 struct fsnotify_event *event;

 event = kmem_cache_alloc(fsnotify_event_cachep, gfp);
 if (!event)
  return ((void*)0);

 initialize_event(event);

 if (name) {
  event->file_name = kstrdup(name, gfp);
  if (!event->file_name) {
   kmem_cache_free(fsnotify_event_cachep, event);
   return ((void*)0);
  }
  event->name_len = strlen(event->file_name);
 }

 event->sync_cookie = cookie;
 event->to_tell = to_tell;

 switch (data_type) {
 case 131: {
  struct file *file = data;
  struct path *path = &file->f_path;
  event->path.dentry = path->dentry;
  event->path.mnt = path->mnt;
  path_get(&event->path);
  event->data_type = 128;
  break;
 }
 case 128: {
  struct path *path = data;
  event->path.dentry = path->dentry;
  event->path.mnt = path->mnt;
  path_get(&event->path);
  event->data_type = 128;
  break;
 }
 case 130:
  event->inode = data;
  event->data_type = 130;
  break;
 case 129:
  event->inode = ((void*)0);
  event->path.dentry = ((void*)0);
  event->path.mnt = ((void*)0);
  break;
 default:
  BUG();
 }

 event->mask = mask;

 return event;
}
