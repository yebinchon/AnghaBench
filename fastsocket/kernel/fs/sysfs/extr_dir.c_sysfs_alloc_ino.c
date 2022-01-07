
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ino_t ;


 int EAGAIN ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int ida_get_new_above (int *,int,int*) ;
 scalar_t__ ida_pre_get (int *,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int sysfs_ino_ida ;
 int sysfs_ino_lock ;

__attribute__((used)) static int sysfs_alloc_ino(ino_t *pino)
{
 int ino, rc;

 retry:
 spin_lock(&sysfs_ino_lock);
 rc = ida_get_new_above(&sysfs_ino_ida, 2, &ino);
 spin_unlock(&sysfs_ino_lock);

 if (rc == -EAGAIN) {
  if (ida_pre_get(&sysfs_ino_ida, GFP_KERNEL))
   goto retry;
  rc = -ENOMEM;
 }

 *pino = ino;
 return rc;
}
