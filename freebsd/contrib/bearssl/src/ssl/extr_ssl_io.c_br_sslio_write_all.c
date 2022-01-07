
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int br_sslio_context ;


 int br_sslio_write (int *,unsigned char const*,size_t) ;

int
br_sslio_write_all(br_sslio_context *ctx, const void *src, size_t len)
{
 const unsigned char *buf;

 buf = src;
 while (len > 0) {
  int wlen;

  wlen = br_sslio_write(ctx, buf, len);
  if (wlen < 0) {
   return -1;
  }
  buf += wlen;
  len -= (size_t)wlen;
 }
 return 0;
}
