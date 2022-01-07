
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct ipv6_pinfo {struct ipv6_fl_socklist* ipv6_fl_list; } ;
struct ipv6_fl_socklist {struct ip6_flowlabel* fl; struct ipv6_fl_socklist* next; } ;
struct ip6_flowlabel {int users; int lastuse; int label; } ;
typedef int __be32 ;


 int IPV6_FLOWLABEL_MASK ;
 int atomic_inc (int *) ;
 struct ipv6_pinfo* inet6_sk (struct sock*) ;
 int ip6_sk_fl_lock ;
 int jiffies ;
 int read_lock_bh (int *) ;
 int read_unlock_bh (int *) ;

struct ip6_flowlabel * fl6_sock_lookup(struct sock *sk, __be32 label)
{
 struct ipv6_fl_socklist *sfl;
 struct ipv6_pinfo *np = inet6_sk(sk);

 label &= IPV6_FLOWLABEL_MASK;

 read_lock_bh(&ip6_sk_fl_lock);
 for (sfl=np->ipv6_fl_list; sfl; sfl = sfl->next) {
  struct ip6_flowlabel *fl = sfl->fl;
  if (fl->label == label) {
   fl->lastuse = jiffies;
   atomic_inc(&fl->users);
   read_unlock_bh(&ip6_sk_fl_lock);
   return fl;
  }
 }
 read_unlock_bh(&ip6_sk_fl_lock);
 return ((void*)0);
}
