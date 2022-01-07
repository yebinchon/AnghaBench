
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct audit_watch {TYPE_1__* parent; int ino; int dev; int path; } ;
struct TYPE_2__ {int wdata; } ;


 int ENOMEM ;
 struct audit_watch* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct audit_watch*) ;
 struct audit_watch* audit_init_watch (char*) ;
 int get_inotify_watch (int *) ;
 int kfree (char*) ;
 char* kstrdup (int ,int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static struct audit_watch *audit_dupe_watch(struct audit_watch *old)
{
 char *path;
 struct audit_watch *new;

 path = kstrdup(old->path, GFP_KERNEL);
 if (unlikely(!path))
  return ERR_PTR(-ENOMEM);

 new = audit_init_watch(path);
 if (IS_ERR(new)) {
  kfree(path);
  goto out;
 }

 new->dev = old->dev;
 new->ino = old->ino;
 get_inotify_watch(&old->parent->wdata);
 new->parent = old->parent;

out:
 return new;
}
