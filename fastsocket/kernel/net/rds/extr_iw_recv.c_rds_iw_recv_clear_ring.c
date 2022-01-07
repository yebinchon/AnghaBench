
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u32 ;
struct TYPE_4__ {scalar_t__ f_page; } ;
struct TYPE_3__ {size_t w_nr; } ;
struct rds_iw_connection {TYPE_2__ i_frag; int * i_recvs; TYPE_1__ i_recv_ring; } ;


 int rds_iw_frag_drop_page (TYPE_2__*) ;
 int rds_iw_recv_clear_one (struct rds_iw_connection*,int *) ;

void rds_iw_recv_clear_ring(struct rds_iw_connection *ic)
{
 u32 i;

 for (i = 0; i < ic->i_recv_ring.w_nr; i++)
  rds_iw_recv_clear_one(ic, &ic->i_recvs[i]);

 if (ic->i_frag.f_page)
  rds_iw_frag_drop_page(&ic->i_frag);
}
