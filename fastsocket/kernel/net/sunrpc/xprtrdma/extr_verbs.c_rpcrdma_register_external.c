
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rpcrdma_ia {int ri_memreg_strategy; TYPE_1__* ri_bind_mem; } ;
struct rpcrdma_xprt {struct rpcrdma_ia rx_ia; } ;
struct rpcrdma_mr_seg {int mr_nsegs; int mr_dma; int mr_base; int mr_rkey; } ;
struct TYPE_2__ {int rkey; } ;







 int rpcrdma_map_one (struct rpcrdma_ia*,struct rpcrdma_mr_seg*,int) ;
 int rpcrdma_register_default_external (struct rpcrdma_mr_seg*,int*,int,struct rpcrdma_ia*) ;
 int rpcrdma_register_fmr_external (struct rpcrdma_mr_seg*,int*,int,struct rpcrdma_ia*) ;
 int rpcrdma_register_frmr_external (struct rpcrdma_mr_seg*,int*,int,struct rpcrdma_ia*,struct rpcrdma_xprt*) ;
 int rpcrdma_register_memwin_external (struct rpcrdma_mr_seg*,int*,int,struct rpcrdma_ia*,struct rpcrdma_xprt*) ;

int
rpcrdma_register_external(struct rpcrdma_mr_seg *seg,
   int nsegs, int writing, struct rpcrdma_xprt *r_xprt)
{
 struct rpcrdma_ia *ia = &r_xprt->rx_ia;
 int rc = 0;

 switch (ia->ri_memreg_strategy) {
 case 131:
  rc = rpcrdma_register_frmr_external(seg, &nsegs, writing, ia, r_xprt);
  break;


 case 128:
  rc = rpcrdma_register_fmr_external(seg, &nsegs, writing, ia);
  break;


 case 129:
 case 130:
  rc = rpcrdma_register_memwin_external(seg, &nsegs, writing, ia, r_xprt);
  break;


 default:
  rc = rpcrdma_register_default_external(seg, &nsegs, writing, ia);
  break;
 }
 if (rc)
  return -1;

 return nsegs;
}
