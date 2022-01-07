
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ssize_t ;


 scalar_t__ EINTR ;
 scalar_t__ errno ;
 scalar_t__ read (int,unsigned char*,size_t) ;

__attribute__((used)) static int
sock_read(void *ctx, unsigned char *buf, size_t len)
{
 for (;;) {
  ssize_t rlen;

  rlen = read(*(int *)ctx, buf, len);
  if (rlen <= 0) {
   if (rlen < 0 && errno == EINTR) {
    continue;
   }
   return -1;
  }
  return (int)rlen;
 }
}
