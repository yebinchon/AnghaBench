
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int br_eax_context ;


 int EQ0 (int) ;
 int br_eax_get_tag (int *,unsigned char*) ;

uint32_t
br_eax_check_tag_trunc(br_eax_context *ctx, const void *tag, size_t len)
{
 unsigned char tmp[16];
 size_t u;
 int x;

 br_eax_get_tag(ctx, tmp);
 x = 0;
 for (u = 0; u < len; u ++) {
  x |= tmp[u] ^ ((const unsigned char *)tag)[u];
 }
 return EQ0(x);
}
