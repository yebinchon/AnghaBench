
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned int max_frag_len; unsigned int oxc; size_t oxa; size_t oxb; } ;
typedef TYPE_1__ br_ssl_engine_context ;



void
br_ssl_engine_new_max_frag_len(br_ssl_engine_context *rc, unsigned max_frag_len)
{
 size_t nxb;

 rc->max_frag_len = max_frag_len;
 nxb = rc->oxc + max_frag_len;
 if (rc->oxa < rc->oxb && rc->oxb > nxb && rc->oxa < nxb) {
  rc->oxb = nxb;
 }
}
