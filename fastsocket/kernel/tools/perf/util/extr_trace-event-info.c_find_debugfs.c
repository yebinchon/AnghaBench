
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* debugfs_mount (int *) ;
 int die (char*) ;

__attribute__((used)) static const char *find_debugfs(void)
{
 const char *path = debugfs_mount(((void*)0));

 if (!path)
  die("Your kernel not support debugfs filesystem");

 return path;
}
