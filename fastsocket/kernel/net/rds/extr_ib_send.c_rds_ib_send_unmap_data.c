
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rm_data_op {scalar_t__ op_nents; int op_sg; } ;
struct rds_ib_connection {TYPE_1__* i_cm_id; } ;
struct TYPE_2__ {int device; } ;


 int DMA_TO_DEVICE ;
 int ib_dma_unmap_sg (int ,int ,scalar_t__,int ) ;

__attribute__((used)) static void rds_ib_send_unmap_data(struct rds_ib_connection *ic,
       struct rm_data_op *op,
       int wc_status)
{
 if (op->op_nents)
  ib_dma_unmap_sg(ic->i_cm_id->device,
    op->op_sg, op->op_nents,
    DMA_TO_DEVICE);
}
