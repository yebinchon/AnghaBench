
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct ipv6_pinfo {struct ipv6_fl_socklist* ipv6_fl_list; } ;
struct ipv6_fl_socklist {int fl; struct ipv6_fl_socklist* next; } ;


 int fl_release (int ) ;
 struct ipv6_pinfo* inet6_sk (struct sock*) ;
 int kfree (struct ipv6_fl_socklist*) ;

void fl6_free_socklist(struct sock *sk)
{
 struct ipv6_pinfo *np = inet6_sk(sk);
 struct ipv6_fl_socklist *sfl;

 while ((sfl = np->ipv6_fl_list) != ((void*)0)) {
  np->ipv6_fl_list = sfl->next;
  fl_release(sfl->fl);
  kfree(sfl);
 }
}
