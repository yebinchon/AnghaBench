
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfsmount {int mnt_writers; int mnt_devname; } ;


 int free_percpu (int ) ;
 int kfree (int ) ;
 int kmem_cache_free (int ,struct vfsmount*) ;
 int mnt_cache ;
 int mnt_free_id (struct vfsmount*) ;

void free_vfsmnt(struct vfsmount *mnt)
{
 kfree(mnt->mnt_devname);
 mnt_free_id(mnt);



 kmem_cache_free(mnt_cache, mnt);
}
