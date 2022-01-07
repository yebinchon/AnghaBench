
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sysfs_dirent {char* s_name; struct sysfs_dirent* s_parent; } ;


 int strcat (char*,char*) ;

__attribute__((used)) static char *sysfs_pathname(struct sysfs_dirent *sd, char *path)
{
 if (sd->s_parent) {
  sysfs_pathname(sd->s_parent, path);
  strcat(path, "/");
 }
 strcat(path, sd->s_name);
 return path;
}
