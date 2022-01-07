
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_3__ {int count; int val_sha1; int val_md5; } ;
typedef TYPE_1__ br_md5sha1_context ;


 int br_range_dec32be (int ,int,unsigned char const*) ;
 int br_range_dec32le (int ,int,unsigned char const*) ;

void
br_md5sha1_set_state(br_md5sha1_context *cc, const void *stb, uint64_t count)
{
 const unsigned char *buf;

 buf = stb;
 br_range_dec32le(cc->val_md5, 4, buf);
 br_range_dec32be(cc->val_sha1, 5, buf + 16);
 cc->count = count;
}
