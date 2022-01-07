
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct rds_iw_mr_pool {int list_lock; int dirty_count; int free_pinned; int dirty_list; } ;
struct TYPE_3__ {int len; int dma_len; } ;
struct TYPE_4__ {TYPE_1__ m_sg; int m_list; } ;
struct rds_iw_mr {TYPE_2__ mapping; } ;


 int atomic_add (int ,int *) ;
 int atomic_inc (int *) ;
 int list_add_tail (int *,int *) ;
 int rds_iw_rdma_fastreg_inv (struct rds_iw_mr*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void rds_iw_free_fastreg(struct rds_iw_mr_pool *pool,
  struct rds_iw_mr *ibmr)
{
 unsigned long flags;
 int ret;

 if (!ibmr->mapping.m_sg.dma_len)
  return;

 ret = rds_iw_rdma_fastreg_inv(ibmr);
 if (ret)
  return;


 spin_lock_irqsave(&pool->list_lock, flags);

 list_add_tail(&ibmr->mapping.m_list, &pool->dirty_list);
 atomic_add(ibmr->mapping.m_sg.len, &pool->free_pinned);
 atomic_inc(&pool->dirty_count);

 spin_unlock_irqrestore(&pool->list_lock, flags);
}
