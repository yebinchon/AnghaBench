
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned char uint32_t ;
typedef int br_ccm_context ;


 unsigned char EQ0 (unsigned char) ;
 size_t br_ccm_get_tag (int *,unsigned char*) ;

uint32_t
br_ccm_check_tag(br_ccm_context *ctx, const void *tag)
{
 unsigned char tmp[16];
 size_t u, tag_len;
 uint32_t z;

 tag_len = br_ccm_get_tag(ctx, tmp);
 z = 0;
 for (u = 0; u < tag_len; u ++) {
  z |= tmp[u] ^ ((const unsigned char *)tag)[u];
 }
 return EQ0(z);
}
