
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfsmount {int mnt_group_id; int mnt_ns; struct vfsmount* mnt_master; } ;
struct path {int dummy; } ;


 struct vfsmount* get_peer_under_root (struct vfsmount*,int ,struct path const*) ;

int get_dominating_id(struct vfsmount *mnt, const struct path *root)
{
 struct vfsmount *m;

 for (m = mnt->mnt_master; m != ((void*)0); m = m->mnt_master) {
  struct vfsmount *d = get_peer_under_root(m, mnt->mnt_ns, root);
  if (d)
   return d->mnt_group_id;
 }

 return 0;
}
