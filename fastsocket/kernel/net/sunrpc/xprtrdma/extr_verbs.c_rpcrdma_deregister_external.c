
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpcrdma_ia {int ri_memreg_strategy; } ;
struct rpcrdma_xprt {struct rpcrdma_ia rx_ia; } ;
struct rpcrdma_rep {void (* rr_func ) (struct rpcrdma_rep*) ;} ;
struct rpcrdma_mr_seg {int mr_nsegs; } ;


 int BUG_ON (int) ;





 int rpcrdma_deregister_default_external (struct rpcrdma_mr_seg*,struct rpcrdma_ia*) ;
 int rpcrdma_deregister_fmr_external (struct rpcrdma_mr_seg*,struct rpcrdma_ia*) ;
 int rpcrdma_deregister_frmr_external (struct rpcrdma_mr_seg*,struct rpcrdma_ia*,struct rpcrdma_xprt*) ;
 int rpcrdma_deregister_memwin_external (struct rpcrdma_mr_seg*,struct rpcrdma_ia*,struct rpcrdma_xprt*,void**) ;
 int rpcrdma_unmap_one (struct rpcrdma_ia*,struct rpcrdma_mr_seg*) ;

int
rpcrdma_deregister_external(struct rpcrdma_mr_seg *seg,
  struct rpcrdma_xprt *r_xprt, void *r)
{
 struct rpcrdma_ia *ia = &r_xprt->rx_ia;
 int nsegs = seg->mr_nsegs, rc;

 switch (ia->ri_memreg_strategy) {
 case 131:
  rc = rpcrdma_deregister_frmr_external(seg, ia, r_xprt);
  break;

 case 128:
  rc = rpcrdma_deregister_fmr_external(seg, ia);
  break;

 case 129:
 case 130:
  rc = rpcrdma_deregister_memwin_external(seg, ia, r_xprt, &r);
  break;

 default:
  rc = rpcrdma_deregister_default_external(seg, ia);
  break;
 }
 if (r) {
  struct rpcrdma_rep *rep = r;
  void (*func)(struct rpcrdma_rep *) = rep->rr_func;
  rep->rr_func = ((void*)0);
  func(rep);
 }
 return nsegs;
}
