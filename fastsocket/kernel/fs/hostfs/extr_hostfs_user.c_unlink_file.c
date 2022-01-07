
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int errno ;
 int unlink (char const*) ;

int unlink_file(const char *file)
{
 int err;

 err = unlink(file);
 if (err)
  return -errno;
 return 0;
}
