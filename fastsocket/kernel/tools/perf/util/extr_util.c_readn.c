
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int read (int,void*,size_t) ;

int readn(int fd, void *buf, size_t n)
{
 void *buf_start = buf;

 while (n) {
  int ret = read(fd, buf, n);

  if (ret <= 0)
   return ret;

  n -= ret;
  buf += ret;
 }

 return buf - buf_start;
}
