
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct rds_iw_recv_work {TYPE_2__* r_frag; TYPE_1__* r_iwinc; } ;
struct rds_iw_connection {int dummy; } ;
struct TYPE_5__ {scalar_t__ f_page; } ;
struct TYPE_4__ {int ii_inc; } ;


 int rds_inc_put (int *) ;
 int rds_iw_frag_drop_page (TYPE_2__*) ;
 int rds_iw_frag_free (TYPE_2__*) ;
 int rds_iw_recv_unmap_page (struct rds_iw_connection*,struct rds_iw_recv_work*) ;

__attribute__((used)) static void rds_iw_recv_clear_one(struct rds_iw_connection *ic,
      struct rds_iw_recv_work *recv)
{
 if (recv->r_iwinc) {
  rds_inc_put(&recv->r_iwinc->ii_inc);
  recv->r_iwinc = ((void*)0);
 }
 if (recv->r_frag) {
  rds_iw_recv_unmap_page(ic, recv);
  if (recv->r_frag->f_page)
   rds_iw_frag_drop_page(recv->r_frag);
  rds_iw_frag_free(recv->r_frag);
  recv->r_frag = ((void*)0);
 }
}
