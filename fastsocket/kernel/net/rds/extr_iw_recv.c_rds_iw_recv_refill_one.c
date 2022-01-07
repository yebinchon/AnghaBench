
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct rds_iw_recv_work {TYPE_3__* r_frag; int r_sge; TYPE_1__* r_iwinc; } ;
struct TYPE_8__ {scalar_t__ f_offset; int * f_page; } ;
struct rds_iw_connection {TYPE_4__ i_frag; struct rds_iw_recv_work* i_recvs; void* i_recv_hdrs_dma; TYPE_2__* i_cm_id; } ;
struct rds_header {int dummy; } ;
struct rds_connection {int c_faddr; struct rds_iw_connection* c_transport_data; } ;
struct ib_sge {int length; void* addr; } ;
typedef int gfp_t ;
typedef void* dma_addr_t ;
struct TYPE_7__ {scalar_t__ f_offset; int * f_page; void* f_mapped; int f_item; } ;
struct TYPE_6__ {int device; } ;
struct TYPE_5__ {int ii_inc; int ii_frags; } ;


 int DMA_FROM_DEVICE ;
 int ENOMEM ;
 int INIT_LIST_HEAD (int *) ;
 int RDS_FRAG_SIZE ;
 scalar_t__ RDS_PAGE_LAST_OFF ;
 int * alloc_page (int ) ;
 int atomic_add_unless (int *,int,int ) ;
 int atomic_dec (int *) ;
 int get_page (int *) ;
 void* ib_dma_map_page (int ,int *,scalar_t__,int,int ) ;
 scalar_t__ ib_dma_mapping_error (int ,void*) ;
 void* kmem_cache_alloc (int ,int ) ;
 int put_page (int *) ;
 int rds_inc_init (int *,struct rds_connection*,int ) ;
 int rds_iw_allocation ;
 struct ib_sge* rds_iw_data_sge (struct rds_iw_connection*,int ) ;
 int rds_iw_frag_slab ;
 struct ib_sge* rds_iw_header_sge (struct rds_iw_connection*,int ) ;
 int rds_iw_incoming_slab ;
 int rds_iw_stats_inc (int ) ;
 int rds_iw_sysctl_max_recv_allocation ;
 int s_iw_rx_alloc_limit ;

__attribute__((used)) static int rds_iw_recv_refill_one(struct rds_connection *conn,
      struct rds_iw_recv_work *recv,
      gfp_t kptr_gfp, gfp_t page_gfp)
{
 struct rds_iw_connection *ic = conn->c_transport_data;
 dma_addr_t dma_addr;
 struct ib_sge *sge;
 int ret = -ENOMEM;

 if (!recv->r_iwinc) {
  if (!atomic_add_unless(&rds_iw_allocation, 1, rds_iw_sysctl_max_recv_allocation)) {
   rds_iw_stats_inc(s_iw_rx_alloc_limit);
   goto out;
  }
  recv->r_iwinc = kmem_cache_alloc(rds_iw_incoming_slab,
       kptr_gfp);
  if (!recv->r_iwinc) {
   atomic_dec(&rds_iw_allocation);
   goto out;
  }
  INIT_LIST_HEAD(&recv->r_iwinc->ii_frags);
  rds_inc_init(&recv->r_iwinc->ii_inc, conn, conn->c_faddr);
 }

 if (!recv->r_frag) {
  recv->r_frag = kmem_cache_alloc(rds_iw_frag_slab, kptr_gfp);
  if (!recv->r_frag)
   goto out;
  INIT_LIST_HEAD(&recv->r_frag->f_item);
  recv->r_frag->f_page = ((void*)0);
 }

 if (!ic->i_frag.f_page) {
  ic->i_frag.f_page = alloc_page(page_gfp);
  if (!ic->i_frag.f_page)
   goto out;
  ic->i_frag.f_offset = 0;
 }

 dma_addr = ib_dma_map_page(ic->i_cm_id->device,
      ic->i_frag.f_page,
      ic->i_frag.f_offset,
      RDS_FRAG_SIZE,
      DMA_FROM_DEVICE);
 if (ib_dma_mapping_error(ic->i_cm_id->device, dma_addr))
  goto out;






 recv->r_frag->f_page = ic->i_frag.f_page;
 recv->r_frag->f_offset = ic->i_frag.f_offset;
 recv->r_frag->f_mapped = dma_addr;

 sge = rds_iw_data_sge(ic, recv->r_sge);
 sge->addr = dma_addr;
 sge->length = RDS_FRAG_SIZE;

 sge = rds_iw_header_sge(ic, recv->r_sge);
 sge->addr = ic->i_recv_hdrs_dma + (recv - ic->i_recvs) * sizeof(struct rds_header);
 sge->length = sizeof(struct rds_header);

 get_page(recv->r_frag->f_page);

 if (ic->i_frag.f_offset < RDS_PAGE_LAST_OFF) {
  ic->i_frag.f_offset += RDS_FRAG_SIZE;
 } else {
  put_page(ic->i_frag.f_page);
  ic->i_frag.f_page = ((void*)0);
  ic->i_frag.f_offset = 0;
 }

 ret = 0;
out:
 return ret;
}
