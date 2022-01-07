
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_3__ {int count; int val; } ;
typedef TYPE_1__ br_md5_context ;


 int br_range_dec32le (int ,int,void const*) ;

void
br_md5_set_state(br_md5_context *cc, const void *stb, uint64_t count)
{
 br_range_dec32le(cc->val, 4, stb);
 cc->count = count;
}
