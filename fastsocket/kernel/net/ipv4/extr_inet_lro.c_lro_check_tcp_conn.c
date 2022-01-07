
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tcphdr {scalar_t__ source; scalar_t__ dest; } ;
struct net_lro_desc {TYPE_2__* tcph; TYPE_1__* iph; } ;
struct iphdr {scalar_t__ saddr; scalar_t__ daddr; } ;
struct TYPE_4__ {scalar_t__ source; scalar_t__ dest; } ;
struct TYPE_3__ {scalar_t__ saddr; scalar_t__ daddr; } ;



__attribute__((used)) static int lro_check_tcp_conn(struct net_lro_desc *lro_desc,
         struct iphdr *iph,
         struct tcphdr *tcph)
{
 if ((lro_desc->iph->saddr != iph->saddr)
     || (lro_desc->iph->daddr != iph->daddr)
     || (lro_desc->tcph->source != tcph->source)
     || (lro_desc->tcph->dest != tcph->dest))
  return -1;
 return 0;
}
