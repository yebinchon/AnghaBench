
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rds_page_frag {scalar_t__ f_mapped; int f_page; } ;
struct rds_iw_recv_work {struct rds_page_frag* r_frag; } ;
struct rds_iw_connection {TYPE_1__* i_cm_id; } ;
struct TYPE_2__ {int device; } ;


 int DMA_FROM_DEVICE ;
 int RDS_FRAG_SIZE ;
 int ib_dma_unmap_page (int ,scalar_t__,int ,int ) ;
 int rdsdebug (char*,struct rds_iw_recv_work*,struct rds_page_frag*,int ) ;

__attribute__((used)) static void rds_iw_recv_unmap_page(struct rds_iw_connection *ic,
       struct rds_iw_recv_work *recv)
{
 struct rds_page_frag *frag = recv->r_frag;

 rdsdebug("recv %p frag %p page %p\n", recv, frag, frag->f_page);
 if (frag->f_mapped)
  ib_dma_unmap_page(ic->i_cm_id->device,
          frag->f_mapped,
          RDS_FRAG_SIZE, DMA_FROM_DEVICE);
 frag->f_mapped = 0;
}
