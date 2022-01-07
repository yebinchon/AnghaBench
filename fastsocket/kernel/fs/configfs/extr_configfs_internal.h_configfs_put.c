
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct configfs_dirent {int s_count; } ;


 int WARN_ON (int) ;
 scalar_t__ atomic_dec_and_test (int *) ;
 int atomic_read (int *) ;
 int release_configfs_dirent (struct configfs_dirent*) ;

__attribute__((used)) static inline void configfs_put(struct configfs_dirent * sd)
{
 WARN_ON(!atomic_read(&sd->s_count));
 if (atomic_dec_and_test(&sd->s_count))
  release_configfs_dirent(sd);
}
