
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfsmount {int mnt_list; struct mnt_namespace* mnt_ns; } ;
struct mnt_namespace {struct vfsmount* root; int list; } ;


 int IS_ERR (struct mnt_namespace*) ;
 struct mnt_namespace* alloc_mnt_ns () ;
 int list_add (int *,int *) ;

struct mnt_namespace *create_mnt_ns(struct vfsmount *mnt)
{
 struct mnt_namespace *new_ns;

 new_ns = alloc_mnt_ns();
 if (!IS_ERR(new_ns)) {
  mnt->mnt_ns = new_ns;
  new_ns->root = mnt;
  list_add(&new_ns->list, &new_ns->root->mnt_list);
 }
 return new_ns;
}
