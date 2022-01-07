
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inotify_operations {int dummy; } ;
struct inotify_handle {int count; struct inotify_operations const* in_ops; scalar_t__ last_wd; int mutex; int watches; int idr; } ;


 int ENOMEM ;
 struct inotify_handle* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int atomic_set (int *,int ) ;
 int get_inotify_handle (struct inotify_handle*) ;
 int idr_init (int *) ;
 struct inotify_handle* kmalloc (int,int ) ;
 int mutex_init (int *) ;
 scalar_t__ unlikely (int) ;

struct inotify_handle *inotify_init(const struct inotify_operations *ops)
{
 struct inotify_handle *ih;

 ih = kmalloc(sizeof(struct inotify_handle), GFP_KERNEL);
 if (unlikely(!ih))
  return ERR_PTR(-ENOMEM);

 idr_init(&ih->idr);
 INIT_LIST_HEAD(&ih->watches);
 mutex_init(&ih->mutex);
 ih->last_wd = 0;
 ih->in_ops = ops;
 atomic_set(&ih->count, 0);
 get_inotify_handle(ih);

 return ih;
}
