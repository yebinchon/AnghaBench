
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rm_rdma_op {scalar_t__ op_mapped; scalar_t__ op_write; int op_nents; int op_sg; } ;
struct rds_iw_connection {TYPE_1__* i_cm_id; } ;
struct TYPE_2__ {int device; } ;


 int DMA_FROM_DEVICE ;
 int DMA_TO_DEVICE ;
 int ib_dma_unmap_sg (int ,int ,int ,int ) ;

__attribute__((used)) static void rds_iw_send_unmap_rdma(struct rds_iw_connection *ic,
       struct rm_rdma_op *op)
{
 if (op->op_mapped) {
  ib_dma_unmap_sg(ic->i_cm_id->device,
   op->op_sg, op->op_nents,
   op->op_write ? DMA_TO_DEVICE : DMA_FROM_DEVICE);
  op->op_mapped = 0;
 }
}
