
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vfsmount {struct mnt_namespace* mnt_ns; int mnt_list; int mnt_root; } ;
struct mnt_namespace {struct vfsmount* root; int list; } ;
struct TYPE_4__ {struct vfsmount* mnt; } ;
struct TYPE_3__ {struct vfsmount* mnt; } ;
struct fs_struct {TYPE_2__ pwd; TYPE_1__ root; } ;


 int CL_COPY_ALL ;
 int CL_EXPIRE ;
 int ENOMEM ;
 struct mnt_namespace* ERR_PTR (int ) ;
 scalar_t__ IS_ERR (struct mnt_namespace*) ;
 struct mnt_namespace* alloc_mnt_ns () ;
 struct vfsmount* copy_tree (struct vfsmount*,int ,int) ;
 int down_write (int *) ;
 int free_mnt_ns (struct mnt_namespace*) ;
 int list_add_tail (int *,int *) ;
 void* mntget (struct vfsmount*) ;
 int mntput (struct vfsmount*) ;
 int namespace_sem ;
 struct vfsmount* next_mnt (struct vfsmount*,struct vfsmount*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int up_write (int *) ;
 int vfsmount_lock ;

__attribute__((used)) static struct mnt_namespace *dup_mnt_ns(struct mnt_namespace *mnt_ns,
  struct fs_struct *fs)
{
 struct mnt_namespace *new_ns;
 struct vfsmount *rootmnt = ((void*)0), *pwdmnt = ((void*)0);
 struct vfsmount *p, *q;

 new_ns = alloc_mnt_ns();
 if (IS_ERR(new_ns))
  return new_ns;

 down_write(&namespace_sem);

 new_ns->root = copy_tree(mnt_ns->root, mnt_ns->root->mnt_root,
     CL_COPY_ALL | CL_EXPIRE);
 if (!new_ns->root) {
  up_write(&namespace_sem);
  free_mnt_ns(mnt_ns);
  return ERR_PTR(-ENOMEM);
 }
 spin_lock(&vfsmount_lock);
 list_add_tail(&new_ns->list, &new_ns->root->mnt_list);
 spin_unlock(&vfsmount_lock);






 p = mnt_ns->root;
 q = new_ns->root;
 while (p) {
  q->mnt_ns = new_ns;
  if (fs) {
   if (p == fs->root.mnt) {
    rootmnt = p;
    fs->root.mnt = mntget(q);
   }
   if (p == fs->pwd.mnt) {
    pwdmnt = p;
    fs->pwd.mnt = mntget(q);
   }
  }
  p = next_mnt(p, mnt_ns->root);
  q = next_mnt(q, new_ns->root);
 }
 up_write(&namespace_sem);

 if (rootmnt)
  mntput(rootmnt);
 if (pwdmnt)
  mntput(pwdmnt);

 return new_ns;
}
