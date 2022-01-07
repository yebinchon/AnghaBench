
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int errno ;
 int mkdir (char const*,int) ;

int do_mkdir(const char *file, int mode)
{
 int err;

 err = mkdir(file, mode);
 if (err)
  return -errno;
 return 0;
}
