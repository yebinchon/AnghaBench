
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zio_cksum_t ;


 scalar_t__ do_byteswap ;
 scalar_t__ do_cksum ;
 int fletcher_4_incremental_byteswap (void*,size_t,int *) ;
 int fletcher_4_incremental_native (void*,size_t,int *) ;
 size_t fread (void*,size_t,int,int ) ;
 int send_stream ;
 size_t total_stream_len ;

__attribute__((used)) static size_t
ssread(void *buf, size_t len, zio_cksum_t *cksum)
{
 size_t outlen;

 if ((outlen = fread(buf, len, 1, send_stream)) == 0)
  return (0);

 if (do_cksum) {
  if (do_byteswap)
   fletcher_4_incremental_byteswap(buf, len, cksum);
  else
   fletcher_4_incremental_native(buf, len, cksum);
 }
 total_stream_len += len;
 return (outlen);
}
