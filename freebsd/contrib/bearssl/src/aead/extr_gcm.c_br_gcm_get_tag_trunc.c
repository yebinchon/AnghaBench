
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int br_gcm_context ;


 int br_gcm_get_tag (int *,unsigned char*) ;
 int memcpy (void*,unsigned char*,size_t) ;

void
br_gcm_get_tag_trunc(br_gcm_context *ctx, void *tag, size_t len)
{
 unsigned char tmp[16];

 br_gcm_get_tag(ctx, tmp);
 memcpy(tag, tmp, len);
}
