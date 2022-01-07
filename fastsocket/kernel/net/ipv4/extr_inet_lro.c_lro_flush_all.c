
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_lro_mgr {int max_desc; struct net_lro_desc* lro_arr; } ;
struct net_lro_desc {scalar_t__ active; } ;


 int lro_flush (struct net_lro_mgr*,struct net_lro_desc*) ;

void lro_flush_all(struct net_lro_mgr *lro_mgr)
{
 int i;
 struct net_lro_desc *lro_desc = lro_mgr->lro_arr;

 for (i = 0; i < lro_mgr->max_desc; i++) {
  if (lro_desc[i].active)
   lro_flush(lro_mgr, &lro_desc[i]);
 }
}
