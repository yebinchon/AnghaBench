
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfsmount {int mnt_root; struct mnt_namespace* mnt_ns; } ;
struct path {int dummy; } ;
struct mnt_namespace {int dummy; } ;


 scalar_t__ is_path_reachable (struct vfsmount*,int ,struct path const*) ;
 struct vfsmount* next_peer (struct vfsmount*) ;

__attribute__((used)) static struct vfsmount *get_peer_under_root(struct vfsmount *mnt,
         struct mnt_namespace *ns,
         const struct path *root)
{
 struct vfsmount *m = mnt;

 do {

  if (m->mnt_ns == ns && is_path_reachable(m, m->mnt_root, root))
   return m;

  m = next_peer(m);
 } while (m != mnt);

 return ((void*)0);
}
