
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_3__ {int count; int val; } ;
typedef TYPE_1__ br_sha224_context ;


 int br_range_dec32be (int ,int,void const*) ;

void
br_sha224_set_state(br_sha224_context *cc, const void *stb, uint64_t count)
{
 br_range_dec32be(cc->val, 8, stb);
 cc->count = count;
}
