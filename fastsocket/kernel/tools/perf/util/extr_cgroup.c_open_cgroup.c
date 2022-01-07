
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int O_RDONLY ;
 int PATH_MAX ;
 scalar_t__ cgroupfs_find_mountpoint (char*,int) ;
 int fprintf (int ,char*,char*) ;
 int open (char*,int ) ;
 int snprintf (char*,int,char*,char*,char*) ;
 int stderr ;

__attribute__((used)) static int open_cgroup(char *name)
{
 char path[PATH_MAX + 1];
 char mnt[PATH_MAX + 1];
 int fd;


 if (cgroupfs_find_mountpoint(mnt, PATH_MAX + 1))
  return -1;

 snprintf(path, PATH_MAX, "%s/%s", mnt, name);

 fd = open(path, O_RDONLY);
 if (fd == -1)
  fprintf(stderr, "no access to cgroup %s\n", path);

 return fd;
}
