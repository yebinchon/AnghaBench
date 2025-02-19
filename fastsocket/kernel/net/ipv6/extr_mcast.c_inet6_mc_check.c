
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct ipv6_pinfo {struct ipv6_mc_socklist* ipv6_mc_list; } ;
struct ipv6_mc_socklist {scalar_t__ sfmode; int sflock; struct ip6_sf_socklist* sflist; int addr; struct ipv6_mc_socklist* next; } ;
struct ip6_sf_socklist {int sl_count; int * sl_addr; } ;
struct in6_addr {int dummy; } ;


 scalar_t__ MCAST_EXCLUDE ;
 scalar_t__ MCAST_INCLUDE ;
 struct ipv6_pinfo* inet6_sk (struct sock*) ;
 scalar_t__ ipv6_addr_equal (int *,struct in6_addr const*) ;
 int ipv6_sk_mc_lock ;
 int read_lock (int *) ;
 int read_unlock (int *) ;

int inet6_mc_check(struct sock *sk, const struct in6_addr *mc_addr,
     const struct in6_addr *src_addr)
{
 struct ipv6_pinfo *np = inet6_sk(sk);
 struct ipv6_mc_socklist *mc;
 struct ip6_sf_socklist *psl;
 int rv = 1;

 read_lock(&ipv6_sk_mc_lock);
 for (mc = np->ipv6_mc_list; mc; mc = mc->next) {
  if (ipv6_addr_equal(&mc->addr, mc_addr))
   break;
 }
 if (!mc) {
  read_unlock(&ipv6_sk_mc_lock);
  return 1;
 }
 read_lock(&mc->sflock);
 psl = mc->sflist;
 if (!psl) {
  rv = mc->sfmode == MCAST_EXCLUDE;
 } else {
  int i;

  for (i=0; i<psl->sl_count; i++) {
   if (ipv6_addr_equal(&psl->sl_addr[i], src_addr))
    break;
  }
  if (mc->sfmode == MCAST_INCLUDE && i >= psl->sl_count)
   rv = 0;
  if (mc->sfmode == MCAST_EXCLUDE && i < psl->sl_count)
   rv = 0;
 }
 read_unlock(&mc->sflock);
 read_unlock(&ipv6_sk_mc_lock);

 return rv;
}
