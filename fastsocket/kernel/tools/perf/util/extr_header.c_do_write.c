
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int errno ;
 int write (int,void const*,size_t) ;

__attribute__((used)) static int do_write(int fd, const void *buf, size_t size)
{
 while (size) {
  int ret = write(fd, buf, size);

  if (ret < 0)
   return -errno;

  size -= ret;
  buf += ret;
 }

 return 0;
}
