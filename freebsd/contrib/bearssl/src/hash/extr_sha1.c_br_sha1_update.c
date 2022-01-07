
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct TYPE_3__ {int val; scalar_t__ buf; scalar_t__ count; } ;
typedef TYPE_1__ br_sha1_context ;


 int br_sha1_round (scalar_t__,int ) ;
 int memcpy (scalar_t__,unsigned char const*,size_t) ;

void
br_sha1_update(br_sha1_context *cc, const void *data, size_t len)
{
 const unsigned char *buf;
 size_t ptr;

 buf = data;
 ptr = (size_t)cc->count & 63;
 while (len > 0) {
  size_t clen;

  clen = 64 - ptr;
  if (clen > len) {
   clen = len;
  }
  memcpy(cc->buf + ptr, buf, clen);
  ptr += clen;
  buf += clen;
  len -= clen;
  cc->count += (uint64_t)clen;
  if (ptr == 64) {
   br_sha1_round(cc->buf, cc->val);
   ptr = 0;
  }
 }
}
