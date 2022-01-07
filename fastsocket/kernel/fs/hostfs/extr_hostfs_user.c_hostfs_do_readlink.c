
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int errno ;
 int readlink (char*,char*,int) ;

int hostfs_do_readlink(char *file, char *buf, int size)
{
 int n;

 n = readlink(file, buf, size);
 if (n < 0)
  return -errno;
 if (n < size)
  buf[n] = '\0';
 return n;
}
