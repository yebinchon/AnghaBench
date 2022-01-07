
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* dentry; } ;
struct nameidata {TYPE_2__ path; } ;
struct audit_parent {int wdata; scalar_t__ flags; int watches; } ;
typedef int s32 ;
struct TYPE_3__ {int d_inode; } ;


 int AUDIT_IN_WATCH ;
 int ENOMEM ;
 struct audit_parent* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int audit_free_parent (int *) ;
 int audit_ih ;
 int get_inotify_watch (int *) ;
 int inotify_add_watch (int ,int *,int ,int ) ;
 int inotify_init_watch (int *) ;
 struct audit_parent* kzalloc (int,int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static struct audit_parent *audit_init_parent(struct nameidata *ndp)
{
 struct audit_parent *parent;
 s32 wd;

 parent = kzalloc(sizeof(*parent), GFP_KERNEL);
 if (unlikely(!parent))
  return ERR_PTR(-ENOMEM);

 INIT_LIST_HEAD(&parent->watches);
 parent->flags = 0;

 inotify_init_watch(&parent->wdata);

 get_inotify_watch(&parent->wdata);
 wd = inotify_add_watch(audit_ih, &parent->wdata,
          ndp->path.dentry->d_inode, AUDIT_IN_WATCH);
 if (wd < 0) {
  audit_free_parent(&parent->wdata);
  return ERR_PTR(wd);
 }

 return parent;
}
