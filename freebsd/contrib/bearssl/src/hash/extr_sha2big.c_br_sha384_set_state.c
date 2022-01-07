
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_3__ {int count; int val; } ;
typedef TYPE_1__ br_sha384_context ;


 int br_range_dec64be (int ,int,void const*) ;

void
br_sha384_set_state(br_sha384_context *cc, const void *stb, uint64_t count)
{
 br_range_dec64be(cc->val, 8, stb);
 cc->count = count;
}
