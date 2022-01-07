
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sysfs_dirent {unsigned int s_flags; } ;


 unsigned int SYSFS_TYPE_MASK ;

__attribute__((used)) static inline unsigned int sysfs_type(struct sysfs_dirent *sd)
{
 return sd->s_flags & SYSFS_TYPE_MASK;
}
