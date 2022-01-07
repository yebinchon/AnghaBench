
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcphdr {int dummy; } ;
struct net_lro_mgr {int lro_arr; } ;
struct net_lro_desc {scalar_t__ active; } ;
struct iphdr {int dummy; } ;


 int lro_flush (struct net_lro_mgr*,struct net_lro_desc*) ;
 struct net_lro_desc* lro_get_desc (struct net_lro_mgr*,int ,struct iphdr*,struct tcphdr*) ;

void lro_flush_pkt(struct net_lro_mgr *lro_mgr,
    struct iphdr *iph, struct tcphdr *tcph)
{
 struct net_lro_desc *lro_desc;

 lro_desc = lro_get_desc(lro_mgr, lro_mgr->lro_arr, iph, tcph);
 if (lro_desc->active)
  lro_flush(lro_mgr, lro_desc);
}
