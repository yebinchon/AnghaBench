
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef unsigned char uint64_t ;
struct TYPE_3__ {int count; int val; int buf; } ;
typedef TYPE_1__ br_sha384_context ;


 int br_enc64be (unsigned char*,int) ;
 int br_range_enc64be (void*,unsigned char*,int) ;
 int memcpy (unsigned char*,int ,int) ;
 int memset (unsigned char*,int ,int) ;
 int sha2big_round (unsigned char*,unsigned char*) ;

__attribute__((used)) static void
sha2big_out(const br_sha384_context *cc, void *dst, int num)
{
 unsigned char buf[128];
 uint64_t val[8];
 size_t ptr;

 ptr = (size_t)cc->count & 127;
 memcpy(buf, cc->buf, ptr);
 memcpy(val, cc->val, sizeof val);
 buf[ptr ++] = 0x80;
 if (ptr > 112) {
  memset(buf + ptr, 0, 128 - ptr);
  sha2big_round(buf, val);
  memset(buf, 0, 112);
 } else {
  memset(buf + ptr, 0, 112 - ptr);
 }
 br_enc64be(buf + 112, cc->count >> 61);
 br_enc64be(buf + 120, cc->count << 3);
 sha2big_round(buf, val);
 br_range_enc64be(dst, val, num);
}
