
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sysfs_dirent {int s_count; } ;


 scalar_t__ atomic_dec_and_test (int *) ;
 int release_sysfs_dirent (struct sysfs_dirent*) ;

__attribute__((used)) static inline void __sysfs_put(struct sysfs_dirent *sd)
{
 if (sd && atomic_dec_and_test(&sd->s_count))
  release_sysfs_dirent(sd);
}
