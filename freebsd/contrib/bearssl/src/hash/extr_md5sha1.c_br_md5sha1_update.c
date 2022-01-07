
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct TYPE_3__ {int val_sha1; scalar_t__ buf; int val_md5; scalar_t__ count; } ;
typedef TYPE_1__ br_md5sha1_context ;


 int br_md5_round (scalar_t__,int ) ;
 int br_sha1_round (scalar_t__,int ) ;
 int memcpy (scalar_t__,unsigned char const*,size_t) ;

void
br_md5sha1_update(br_md5sha1_context *cc, const void *data, size_t len)
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
   br_md5_round(cc->buf, cc->val_md5);
   br_sha1_round(cc->buf, cc->val_sha1);
   ptr = 0;
  }
 }
}
