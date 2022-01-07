
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_3__ {int count; int val; } ;
typedef TYPE_1__ br_sha384_context ;


 int br_range_enc64be (void*,int ,int) ;

uint64_t
br_sha384_state(const br_sha384_context *cc, void *dst)
{
 br_range_enc64be(dst, cc->val, 8);
 return cc->count;
}
