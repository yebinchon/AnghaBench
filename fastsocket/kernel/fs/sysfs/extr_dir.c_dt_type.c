
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sysfs_dirent {int s_mode; } ;



__attribute__((used)) static inline unsigned char dt_type(struct sysfs_dirent *sd)
{
 return (sd->s_mode >> 12) & 15;
}
