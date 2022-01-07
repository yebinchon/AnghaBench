
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char u32 ;
struct perf_header {scalar_t__ needs_swap; } ;
typedef scalar_t__ ssize_t ;
typedef int len ;


 char bswap_32 (char) ;
 int free (char*) ;
 char* malloc (char) ;
 scalar_t__ read (int,char*,char) ;

__attribute__((used)) static char *do_read_string(int fd, struct perf_header *ph)
{
 ssize_t sz, ret;
 u32 len;
 char *buf;

 sz = read(fd, &len, sizeof(len));
 if (sz < (ssize_t)sizeof(len))
  return ((void*)0);

 if (ph->needs_swap)
  len = bswap_32(len);

 buf = malloc(len);
 if (!buf)
  return ((void*)0);

 ret = read(fd, buf, len);
 if (ret == (ssize_t)len) {





  return buf;
 }

 free(buf);
 return ((void*)0);
}
