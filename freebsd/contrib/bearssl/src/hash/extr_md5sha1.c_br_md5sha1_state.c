
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_3__ {int count; int val_sha1; int val_md5; } ;
typedef TYPE_1__ br_md5sha1_context ;


 int br_range_enc32be (unsigned char*,int ,int) ;
 int br_range_enc32le (unsigned char*,int ,int) ;

uint64_t
br_md5sha1_state(const br_md5sha1_context *cc, void *dst)
{
 unsigned char *out;

 out = dst;
 br_range_enc32le(out, cc->val_md5, 4);
 br_range_enc32be(out + 16, cc->val_sha1, 5);
 return cc->count;
}
