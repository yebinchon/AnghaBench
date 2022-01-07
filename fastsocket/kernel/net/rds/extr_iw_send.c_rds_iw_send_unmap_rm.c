
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int op_bytes; scalar_t__ op_write; scalar_t__ op_active; } ;
struct TYPE_5__ {int op_nents; int op_sg; } ;
struct rds_message {TYPE_3__ rdma; TYPE_2__ data; } ;
struct rds_iw_send_work {struct rds_message* s_rm; } ;
struct rds_iw_connection {TYPE_1__* i_cm_id; } ;
struct TYPE_4__ {int device; } ;


 int DMA_TO_DEVICE ;
 int ib_dma_unmap_sg (int ,int ,int ,int ) ;
 int rds_iw_send_rdma_complete (struct rds_message*,int) ;
 int rds_iw_send_unmap_rdma (struct rds_iw_connection*,TYPE_3__*) ;
 int rds_message_put (struct rds_message*) ;
 int rds_message_unmapped (struct rds_message*) ;
 int rds_stats_add (int ,int ) ;
 int rdsdebug (char*,struct rds_iw_connection*,struct rds_iw_send_work*,struct rds_message*) ;
 int s_recv_rdma_bytes ;
 int s_send_rdma_bytes ;

__attribute__((used)) static void rds_iw_send_unmap_rm(struct rds_iw_connection *ic,
     struct rds_iw_send_work *send,
     int wc_status)
{
 struct rds_message *rm = send->s_rm;

 rdsdebug("ic %p send %p rm %p\n", ic, send, rm);

 ib_dma_unmap_sg(ic->i_cm_id->device,
       rm->data.op_sg, rm->data.op_nents,
       DMA_TO_DEVICE);

 if (rm->rdma.op_active) {
  rds_iw_send_unmap_rdma(ic, &rm->rdma);
  rds_iw_send_rdma_complete(rm, wc_status);

  if (rm->rdma.op_write)
   rds_stats_add(s_send_rdma_bytes, rm->rdma.op_bytes);
  else
   rds_stats_add(s_recv_rdma_bytes, rm->rdma.op_bytes);
 }



 rds_message_unmapped(rm);

 rds_message_put(rm);
 send->s_rm = ((void*)0);
}
