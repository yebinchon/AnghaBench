
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfsmount {int mnt_ghosts; int mnt_count; } ;


 int atomic_read (int *) ;

__attribute__((used)) static inline int do_refcount_check(struct vfsmount *mnt, int count)
{
 int mycount = atomic_read(&mnt->mnt_count) - mnt->mnt_ghosts;
 return (mycount > count);
}
