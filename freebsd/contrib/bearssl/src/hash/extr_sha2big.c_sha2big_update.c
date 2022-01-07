
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct TYPE_3__ {int val; scalar_t__ buf; scalar_t__ count; } ;
typedef TYPE_1__ br_sha384_context ;


 int memcpy (scalar_t__,unsigned char const*,size_t) ;
 int sha2big_round (scalar_t__,int ) ;

__attribute__((used)) static void
sha2big_update(br_sha384_context *cc, const void *data, size_t len)
{
 const unsigned char *buf;
 size_t ptr;

 buf = data;
 ptr = (size_t)cc->count & 127;
 cc->count += (uint64_t)len;
 while (len > 0) {
  size_t clen;

  clen = 128 - ptr;
  if (clen > len) {
   clen = len;
  }
  memcpy(cc->buf + ptr, buf, clen);
  ptr += clen;
  buf += clen;
  len -= clen;
  if (ptr == 128) {
   sha2big_round(cc->buf, cc->val);
   ptr = 0;
  }
 }
}
