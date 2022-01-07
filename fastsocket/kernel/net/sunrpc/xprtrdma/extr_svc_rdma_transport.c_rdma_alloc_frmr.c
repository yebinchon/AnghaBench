
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct svcxprt_rdma {TYPE_1__* sc_cm_id; int sc_pd; } ;
struct svc_rdma_fastreg_mr {int frmr_list; struct ib_mr* page_list; struct ib_mr* mr; } ;
struct ib_mr {int dummy; } ;
typedef struct ib_mr ib_fast_reg_page_list ;
struct TYPE_2__ {int device; } ;


 int ENOMEM ;
 struct svc_rdma_fastreg_mr* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 scalar_t__ IS_ERR (struct ib_mr*) ;
 int RPCSVC_MAXPAGES ;
 struct ib_mr* ib_alloc_fast_reg_mr (int ,int ) ;
 struct ib_mr* ib_alloc_fast_reg_page_list (int ,int ) ;
 int ib_dereg_mr (struct ib_mr*) ;
 int kfree (struct svc_rdma_fastreg_mr*) ;
 struct svc_rdma_fastreg_mr* kmalloc (int,int ) ;

__attribute__((used)) static struct svc_rdma_fastreg_mr *rdma_alloc_frmr(struct svcxprt_rdma *xprt)
{
 struct ib_mr *mr;
 struct ib_fast_reg_page_list *pl;
 struct svc_rdma_fastreg_mr *frmr;

 frmr = kmalloc(sizeof(*frmr), GFP_KERNEL);
 if (!frmr)
  goto err;

 mr = ib_alloc_fast_reg_mr(xprt->sc_pd, RPCSVC_MAXPAGES);
 if (IS_ERR(mr))
  goto err_free_frmr;

 pl = ib_alloc_fast_reg_page_list(xprt->sc_cm_id->device,
      RPCSVC_MAXPAGES);
 if (IS_ERR(pl))
  goto err_free_mr;

 frmr->mr = mr;
 frmr->page_list = pl;
 INIT_LIST_HEAD(&frmr->frmr_list);
 return frmr;

 err_free_mr:
 ib_dereg_mr(mr);
 err_free_frmr:
 kfree(frmr);
 err:
 return ERR_PTR(-ENOMEM);
}
