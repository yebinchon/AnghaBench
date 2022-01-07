
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void DIR ;


 int errno ;
 void* opendir (char*) ;

void *open_dir(char *path, int *err_out)
{
 DIR *dir;

 dir = opendir(path);
 *err_out = errno;
 if (dir == ((void*)0))
  return ((void*)0);
 return dir;
}
