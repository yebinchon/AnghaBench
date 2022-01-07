
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ssize_t ;


 scalar_t__ EINTR ;
 scalar_t__ errno ;
 scalar_t__ write (int,unsigned char const*,size_t) ;

__attribute__((used)) static int
sock_write(void *ctx, const unsigned char *buf, size_t len)
{
 for (;;) {
  ssize_t wlen;

  wlen = write(*(int *)ctx, buf, len);
  if (wlen <= 0) {
   if (wlen < 0 && errno == EINTR) {
    continue;
   }
   return -1;
  }
  return (int)wlen;
 }
}
