
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ino_t ;


 int ida_remove (int *,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int sysfs_ino_ida ;
 int sysfs_ino_lock ;

__attribute__((used)) static void sysfs_free_ino(ino_t ino)
{
 spin_lock(&sysfs_ino_lock);
 ida_remove(&sysfs_ino_ida, ino);
 spin_unlock(&sysfs_ino_lock);
}
