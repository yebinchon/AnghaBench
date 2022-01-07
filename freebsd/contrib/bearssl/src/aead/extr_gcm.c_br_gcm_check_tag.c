
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int br_gcm_context ;


 int br_gcm_check_tag_trunc (int *,void const*,int) ;

uint32_t
br_gcm_check_tag(br_gcm_context *ctx, const void *tag)
{
 return br_gcm_check_tag_trunc(ctx, tag, 16);
}
