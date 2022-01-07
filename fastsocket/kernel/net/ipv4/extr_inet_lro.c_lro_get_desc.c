
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcphdr {int dummy; } ;
struct net_lro_mgr {int max_desc; } ;
struct net_lro_desc {scalar_t__ active; } ;
struct iphdr {int dummy; } ;


 int LRO_INC_STATS (struct net_lro_mgr*,int ) ;
 int lro_check_tcp_conn (struct net_lro_desc*,struct iphdr*,struct tcphdr*) ;
 int no_desc ;

__attribute__((used)) static struct net_lro_desc *lro_get_desc(struct net_lro_mgr *lro_mgr,
      struct net_lro_desc *lro_arr,
      struct iphdr *iph,
      struct tcphdr *tcph)
{
 struct net_lro_desc *lro_desc = ((void*)0);
 struct net_lro_desc *tmp;
 int max_desc = lro_mgr->max_desc;
 int i;

 for (i = 0; i < max_desc; i++) {
  tmp = &lro_arr[i];
  if (tmp->active)
   if (!lro_check_tcp_conn(tmp, iph, tcph)) {
    lro_desc = tmp;
    goto out;
   }
 }

 for (i = 0; i < max_desc; i++) {
  if (!lro_arr[i].active) {
   lro_desc = &lro_arr[i];
   goto out;
  }
 }

 LRO_INC_STATS(lro_mgr, no_desc);
out:
 return lro_desc;
}
