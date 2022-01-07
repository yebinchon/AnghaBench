
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int O_CREAT ;
 int O_TRUNC ;
 int O_WRONLY ;
 int close (int) ;
 int errno ;
 int fdt_totalsize (void const*) ;
 int open (char const*,int,int) ;
 scalar_t__ strcmp (char const*,char*) ;
 int write (int,char const*,int) ;

int utilfdt_write_err(const char *filename, const void *blob)
{
 int fd = 1;
 int totalsize;
 int offset;
 int ret = 0;
 const char *ptr = blob;

 if (strcmp(filename, "-") != 0) {
  fd = open(filename, O_WRONLY | O_CREAT | O_TRUNC, 0666);
  if (fd < 0)
   return errno;
 }

 totalsize = fdt_totalsize(blob);
 offset = 0;

 while (offset < totalsize) {
  ret = write(fd, ptr + offset, totalsize - offset);
  if (ret < 0) {
   ret = -errno;
   break;
  }
  offset += ret;
 }

 if (fd != 1)
  close(fd);
 return ret < 0 ? -ret : 0;
}
