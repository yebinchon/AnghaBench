
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ssize_t ;
typedef int off_t ;


 int SEEK_SET ;
 int lseek (int,int,int ) ;
 int read (int,void*,size_t) ;

ssize_t
pread(int fd, void *buf, size_t len, off_t off) {
 off_t old;
 ssize_t rv;

 if ((old = lseek(fd, off, SEEK_SET)) == -1)
  return -1;

 if ((rv = read(fd, buf, len)) == -1)
  return -1;

 if (lseek(fd, old, SEEK_SET) == -1)
  return -1;

 return rv;
}
