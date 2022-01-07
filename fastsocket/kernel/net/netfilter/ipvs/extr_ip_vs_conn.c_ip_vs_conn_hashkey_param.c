
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef union nf_inet_addr {int dummy; } nf_inet_addr ;
struct ip_vs_conn_param {int protocol; int af; int vport; union nf_inet_addr* vaddr; int cport; union nf_inet_addr* caddr; TYPE_1__* pe; scalar_t__ pe_data; } ;
typedef int __be16 ;
struct TYPE_2__ {unsigned int (* hashkey_raw ) (struct ip_vs_conn_param const*,int ,int) ;} ;


 unsigned int ip_vs_conn_hashkey (int ,int ,union nf_inet_addr const*,int ) ;
 int ip_vs_conn_rnd ;
 unsigned int ip_vs_conn_tab_mask ;
 scalar_t__ likely (int) ;
 unsigned int stub1 (struct ip_vs_conn_param const*,int ,int) ;

__attribute__((used)) static unsigned int ip_vs_conn_hashkey_param(const struct ip_vs_conn_param *p,
          bool inverse)
{
 const union nf_inet_addr *addr;
 __be16 port;

 if (p->pe_data && p->pe->hashkey_raw)
  return p->pe->hashkey_raw(p, ip_vs_conn_rnd, inverse) &
   ip_vs_conn_tab_mask;

 if (likely(!inverse)) {
  addr = p->caddr;
  port = p->cport;
 } else {
  addr = p->vaddr;
  port = p->vport;
 }

 return ip_vs_conn_hashkey(p->af, p->protocol, addr, port);
}
