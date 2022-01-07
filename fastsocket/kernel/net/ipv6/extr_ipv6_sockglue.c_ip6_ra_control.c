
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {scalar_t__ sk_type; } ;
struct ip6_ra_chain {int sel; struct ip6_ra_chain* next; struct sock* sk; } ;
struct TYPE_2__ {scalar_t__ num; } ;


 int EADDRINUSE ;
 int ENOBUFS ;
 int ENOPROTOOPT ;
 int GFP_KERNEL ;
 scalar_t__ IPPROTO_RAW ;
 scalar_t__ SOCK_RAW ;
 TYPE_1__* inet_sk (struct sock*) ;
 struct ip6_ra_chain* ip6_ra_chain ;
 int ip6_ra_lock ;
 int kfree (struct ip6_ra_chain*) ;
 struct ip6_ra_chain* kmalloc (int,int ) ;
 int sock_hold (struct sock*) ;
 int sock_put (struct sock*) ;
 int write_lock_bh (int *) ;
 int write_unlock_bh (int *) ;

int ip6_ra_control(struct sock *sk, int sel)
{
 struct ip6_ra_chain *ra, *new_ra, **rap;


 if (sk->sk_type != SOCK_RAW || inet_sk(sk)->num != IPPROTO_RAW)
  return -ENOPROTOOPT;

 new_ra = (sel>=0) ? kmalloc(sizeof(*new_ra), GFP_KERNEL) : ((void*)0);

 write_lock_bh(&ip6_ra_lock);
 for (rap = &ip6_ra_chain; (ra=*rap) != ((void*)0); rap = &ra->next) {
  if (ra->sk == sk) {
   if (sel>=0) {
    write_unlock_bh(&ip6_ra_lock);
    kfree(new_ra);
    return -EADDRINUSE;
   }

   *rap = ra->next;
   write_unlock_bh(&ip6_ra_lock);

   sock_put(sk);
   kfree(ra);
   return 0;
  }
 }
 if (new_ra == ((void*)0)) {
  write_unlock_bh(&ip6_ra_lock);
  return -ENOBUFS;
 }
 new_ra->sk = sk;
 new_ra->sel = sel;
 new_ra->next = ra;
 *rap = new_ra;
 sock_hold(sk);
 write_unlock_bh(&ip6_ra_lock);
 return 0;
}
