
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rds_iw_mr_pool {int dummy; } ;
struct rds_iw_mr {scalar_t__ mr; scalar_t__ page_list; } ;


 int ib_dereg_mr (scalar_t__) ;
 int ib_free_fast_reg_page_list (scalar_t__) ;

__attribute__((used)) static void rds_iw_destroy_fastreg(struct rds_iw_mr_pool *pool,
  struct rds_iw_mr *ibmr)
{
 if (ibmr->page_list)
  ib_free_fast_reg_page_list(ibmr->page_list);
 if (ibmr->mr)
  ib_dereg_mr(ibmr->mr);
}
