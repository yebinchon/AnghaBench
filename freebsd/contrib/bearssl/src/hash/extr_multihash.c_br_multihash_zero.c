
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int br_multihash_context ;


 int memset (int *,int ,int) ;

void
br_multihash_zero(br_multihash_context *ctx)
{




 memset(ctx, 0, sizeof *ctx);
}
