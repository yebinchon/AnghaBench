
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipv6_pinfo {struct ipv6_fl_socklist* ipv6_fl_list; } ;
struct ipv6_fl_socklist {struct ipv6_fl_socklist* next; struct ip6_flowlabel* fl; } ;
struct ip6_flowlabel {int dummy; } ;


 int ip6_sk_fl_lock ;
 int write_lock_bh (int *) ;
 int write_unlock_bh (int *) ;

__attribute__((used)) static inline void fl_link(struct ipv6_pinfo *np, struct ipv6_fl_socklist *sfl,
  struct ip6_flowlabel *fl)
{
 write_lock_bh(&ip6_sk_fl_lock);
 sfl->fl = fl;
 sfl->next = np->ipv6_fl_list;
 np->ipv6_fl_list = sfl;
 write_unlock_bh(&ip6_sk_fl_lock);
}
