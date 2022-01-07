
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_3__ {int count; int val; } ;
typedef TYPE_1__ br_md5_context ;


 int br_range_enc32le (void*,int ,int) ;

uint64_t
br_md5_state(const br_md5_context *cc, void *dst)
{
 br_range_enc32le(dst, cc->val, 4);
 return cc->count;
}
