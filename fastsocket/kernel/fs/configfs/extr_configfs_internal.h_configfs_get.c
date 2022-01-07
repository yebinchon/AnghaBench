
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct configfs_dirent {int s_count; } ;


 int WARN_ON (int) ;
 int atomic_inc (int *) ;
 int atomic_read (int *) ;

__attribute__((used)) static inline struct configfs_dirent * configfs_get(struct configfs_dirent * sd)
{
 if (sd) {
  WARN_ON(!atomic_read(&sd->s_count));
  atomic_inc(&sd->s_count);
 }
 return sd;
}
