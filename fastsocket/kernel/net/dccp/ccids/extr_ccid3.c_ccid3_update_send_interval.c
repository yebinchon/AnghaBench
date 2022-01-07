
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct ccid3_hc_tx_sock {int ccid3hctx_t_ipi; int ccid3hctx_x; scalar_t__ ccid3hctx_s; int ccid3hctx_delta; } ;


 int TFRC_OPSYS_HALF_TIME_GRAN ;
 int ccid3_pr_debug (char*,int,int ,scalar_t__,unsigned int) ;
 int min_t (int ,int,int ) ;
 int scaled_div32 (int,int) ;
 int u32 ;

__attribute__((used)) static void ccid3_update_send_interval(struct ccid3_hc_tx_sock *hctx)
{

 hctx->ccid3hctx_t_ipi = scaled_div32(((u64)hctx->ccid3hctx_s) << 6,
          hctx->ccid3hctx_x);


 hctx->ccid3hctx_delta = min_t(u32, hctx->ccid3hctx_t_ipi / 2,
        TFRC_OPSYS_HALF_TIME_GRAN);

 ccid3_pr_debug("t_ipi=%u, delta=%u, s=%u, X=%u\n",
         hctx->ccid3hctx_t_ipi, hctx->ccid3hctx_delta,
         hctx->ccid3hctx_s, (unsigned)(hctx->ccid3hctx_x >> 6));

}
