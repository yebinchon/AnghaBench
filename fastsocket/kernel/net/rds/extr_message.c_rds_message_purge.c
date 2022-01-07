
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ op_rdma_mr; scalar_t__ op_active; } ;
struct TYPE_5__ {scalar_t__ op_rdma_mr; scalar_t__ op_active; } ;
struct TYPE_4__ {unsigned long op_nents; int * op_sg; } ;
struct rds_message {TYPE_3__ atomic; TYPE_2__ rdma; TYPE_1__ data; int m_flags; } ;


 int RDS_MSG_PAGEVEC ;
 int __free_page (scalar_t__) ;
 int rds_atomic_free_op (TYPE_3__*) ;
 int rds_mr_put (scalar_t__) ;
 int rds_rdma_free_op (TYPE_2__*) ;
 int rdsdebug (char*,void*) ;
 scalar_t__ sg_page (int *) ;
 int test_bit (int ,int *) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static void rds_message_purge(struct rds_message *rm)
{
 unsigned long i;

 if (unlikely(test_bit(RDS_MSG_PAGEVEC, &rm->m_flags)))
  return;

 for (i = 0; i < rm->data.op_nents; i++) {
  rdsdebug("putting data page %p\n", (void *)sg_page(&rm->data.op_sg[i]));

  __free_page(sg_page(&rm->data.op_sg[i]));
 }
 rm->data.op_nents = 0;

 if (rm->rdma.op_active)
  rds_rdma_free_op(&rm->rdma);
 if (rm->rdma.op_rdma_mr)
  rds_mr_put(rm->rdma.op_rdma_mr);

 if (rm->atomic.op_active)
  rds_atomic_free_op(&rm->atomic);
 if (rm->atomic.op_rdma_mr)
  rds_mr_put(rm->atomic.op_rdma_mr);
}
