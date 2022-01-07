
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int errno ;
 int makedev (unsigned int,unsigned int) ;
 int mknod (char const*,int,int ) ;

int do_mknod(const char *file, int mode, unsigned int major, unsigned int minor)
{
 int err;

 err = mknod(file, mode, makedev(major, minor));
 if (err)
  return -errno;
 return 0;
}
