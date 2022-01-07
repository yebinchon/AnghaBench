
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct michael_mic_ctx {int l; int r; } ;


 int rol32 (int,int) ;
 int ror32 (int,int) ;

__attribute__((used)) static void michael_block(struct michael_mic_ctx *mctx, u32 val)
{
 mctx->l ^= val;
 mctx->r ^= rol32(mctx->l, 17);
 mctx->l += mctx->r;
 mctx->r ^= ((mctx->l & 0xff00ff00) >> 8) |
     ((mctx->l & 0x00ff00ff) << 8);
 mctx->l += mctx->r;
 mctx->r ^= rol32(mctx->l, 3);
 mctx->l += mctx->r;
 mctx->r ^= ror32(mctx->l, 2);
 mctx->l += mctx->r;
}
