
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfsmount {int dummy; } ;
struct path {int dentry; int mnt; } ;


 int CL_COPY_ALL ;
 int CL_PRIVATE ;
 struct vfsmount* copy_tree (int ,int ,int) ;
 int down_write (int *) ;
 int namespace_sem ;
 int up_write (int *) ;

struct vfsmount *collect_mounts(struct path *path)
{
 struct vfsmount *tree;
 down_write(&namespace_sem);
 tree = copy_tree(path->mnt, path->dentry, CL_COPY_ALL | CL_PRIVATE);
 up_write(&namespace_sem);
 return tree;
}
