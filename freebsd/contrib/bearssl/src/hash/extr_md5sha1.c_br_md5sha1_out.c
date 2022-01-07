
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
typedef unsigned char uint32_t ;
struct TYPE_3__ {int count; int val_sha1; int val_md5; int buf; } ;
typedef TYPE_1__ br_md5sha1_context ;


 int br_enc64be (unsigned char*,int) ;
 int br_enc64le (unsigned char*,int) ;
 int br_md5_round (unsigned char*,unsigned char*) ;
 int br_range_enc32be (unsigned char*,unsigned char*,int) ;
 int br_range_enc32le (unsigned char*,unsigned char*,int) ;
 int br_sha1_round (unsigned char*,unsigned char*) ;
 int memcpy (unsigned char*,int ,int) ;
 int memset (unsigned char*,int ,int) ;

void
br_md5sha1_out(const br_md5sha1_context *cc, void *dst)
{
 unsigned char buf[64];
 uint32_t val_md5[4];
 uint32_t val_sha1[5];
 size_t ptr;
 unsigned char *out;
 uint64_t count;

 count = cc->count;
 ptr = (size_t)count & 63;
 memcpy(buf, cc->buf, ptr);
 memcpy(val_md5, cc->val_md5, sizeof val_md5);
 memcpy(val_sha1, cc->val_sha1, sizeof val_sha1);
 buf[ptr ++] = 0x80;
 if (ptr > 56) {
  memset(buf + ptr, 0, 64 - ptr);
  br_md5_round(buf, val_md5);
  br_sha1_round(buf, val_sha1);
  memset(buf, 0, 56);
 } else {
  memset(buf + ptr, 0, 56 - ptr);
 }
 count <<= 3;
 br_enc64le(buf + 56, count);
 br_md5_round(buf, val_md5);
 br_enc64be(buf + 56, count);
 br_sha1_round(buf, val_sha1);
 out = dst;
 br_range_enc32le(out, val_md5, 4);
 br_range_enc32be(out + 16, val_sha1, 5);
}
