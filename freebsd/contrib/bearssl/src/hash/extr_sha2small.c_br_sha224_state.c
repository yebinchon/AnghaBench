
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_3__ {int count; int val; } ;
typedef TYPE_1__ br_sha224_context ;


 int br_range_enc32be (void*,int ,int) ;

uint64_t
br_sha224_state(const br_sha224_context *cc, void *dst)
{
 br_range_enc32be(dst, cc->val, 8);
 return cc->count;
}
