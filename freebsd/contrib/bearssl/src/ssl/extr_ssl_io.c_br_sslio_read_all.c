
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int br_sslio_context ;


 int br_sslio_read (int *,unsigned char*,size_t) ;

int
br_sslio_read_all(br_sslio_context *ctx, void *dst, size_t len)
{
 unsigned char *buf;

 buf = dst;
 while (len > 0) {
  int rlen;

  rlen = br_sslio_read(ctx, buf, len);
  if (rlen < 0) {
   return -1;
  }
  buf += rlen;
  len -= (size_t)rlen;
 }
 return 0;
}
