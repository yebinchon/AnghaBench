
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct md4_ctx {int block; int hash; } ;


 int le32_to_cpu_array (int ,int) ;
 int md4_transform (int ,int ) ;

__attribute__((used)) static inline void md4_transform_helper(struct md4_ctx *ctx)
{
 le32_to_cpu_array(ctx->block, sizeof(ctx->block) / sizeof(uint32_t));
 md4_transform(ctx->hash, ctx->block);
}
