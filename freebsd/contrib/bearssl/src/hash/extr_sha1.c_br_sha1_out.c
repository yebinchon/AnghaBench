
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef unsigned char uint32_t ;
struct TYPE_3__ {int count; int val; int buf; } ;
typedef TYPE_1__ br_sha1_context ;


 int br_enc64be (unsigned char*,int) ;
 int br_range_enc32be (void*,unsigned char*,int) ;
 int br_sha1_round (unsigned char*,unsigned char*) ;
 int memcpy (unsigned char*,int ,int) ;
 int memset (unsigned char*,int ,int) ;

void
br_sha1_out(const br_sha1_context *cc, void *dst)
{
 unsigned char buf[64];
 uint32_t val[5];
 size_t ptr;

 ptr = (size_t)cc->count & 63;
 memcpy(buf, cc->buf, ptr);
 memcpy(val, cc->val, sizeof val);
 buf[ptr ++] = 0x80;
 if (ptr > 56) {
  memset(buf + ptr, 0, 64 - ptr);
  br_sha1_round(buf, val);
  memset(buf, 0, 56);
 } else {
  memset(buf + ptr, 0, 56 - ptr);
 }
 br_enc64be(buf + 56, cc->count << 3);
 br_sha1_round(buf, val);
 br_range_enc32be(dst, val, 5);
}
