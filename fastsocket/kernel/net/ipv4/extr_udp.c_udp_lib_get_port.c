
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u64 ;
struct udp_table {struct udp_hslot* hash; } ;
struct udp_hslot {int lock; int head; } ;
struct sock {unsigned short sk_hash; TYPE_2__* sk_prot; } ;
struct net {int dummy; } ;
struct TYPE_6__ {unsigned short num; } ;
struct TYPE_4__ {struct udp_table* udp_table; } ;
struct TYPE_5__ {TYPE_1__ h; } ;


 int DECLARE_BITMAP (int *,int ) ;
 int PORTS_PER_CHAIN ;
 unsigned int UDP_HTABLE_SIZE ;
 int * bitmap ;
 int bitmap_zero (int *,int ) ;
 int inet_get_local_port_range (int*,int*) ;
 int inet_is_reserved_local_port (unsigned short) ;
 TYPE_3__* inet_sk (struct sock*) ;
 unsigned int net_random () ;
 int sk_nulls_add_node_rcu (struct sock*,int *) ;
 scalar_t__ sk_unhashed (struct sock*) ;
 struct net* sock_net (struct sock*) ;
 int sock_prot_inuse_add (struct net*,TYPE_2__*,int) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int test_bit (unsigned short,int *) ;
 size_t udp_hashfn (struct net*,unsigned short) ;
 scalar_t__ udp_lib_lport_inuse (struct net*,unsigned short,struct udp_hslot*,int *,struct sock*,int (*) (struct sock const*,struct sock const*)) ;

int udp_lib_get_port(struct sock *sk, unsigned short snum,
         int (*saddr_comp)(const struct sock *sk1,
      const struct sock *sk2))
{
 struct udp_hslot *hslot;
 struct udp_table *udptable = sk->sk_prot->h.udp_table;
 int error = 1;
 struct net *net = sock_net(sk);

 if (!snum) {
  int low, high, remaining;
  unsigned rand;
  unsigned short first, last;
  DECLARE_BITMAP(bitmap, PORTS_PER_CHAIN);

  inet_get_local_port_range(&low, &high);
  remaining = (high - low) + 1;

  rand = net_random();
  first = (((u64)rand * remaining) >> 32) + low;



  rand = (rand | 1) * UDP_HTABLE_SIZE;
  for (last = first + UDP_HTABLE_SIZE; first != last; first++) {
   hslot = &udptable->hash[udp_hashfn(net, first)];
   bitmap_zero(bitmap, PORTS_PER_CHAIN);
   spin_lock_bh(&hslot->lock);
   udp_lib_lport_inuse(net, snum, hslot, bitmap, sk,
         saddr_comp);

   snum = first;





   do {
    if (low <= snum && snum <= high &&
        !test_bit(snum / UDP_HTABLE_SIZE, bitmap) &&
        !inet_is_reserved_local_port(snum))
     goto found;
    snum += rand;
   } while (snum != first);
   spin_unlock_bh(&hslot->lock);
  }
  goto fail;
 } else {
  hslot = &udptable->hash[udp_hashfn(net, snum)];
  spin_lock_bh(&hslot->lock);
  if (udp_lib_lport_inuse(net, snum, hslot, ((void*)0), sk, saddr_comp))
   goto fail_unlock;
 }
found:
 inet_sk(sk)->num = snum;
 sk->sk_hash = snum;
 if (sk_unhashed(sk)) {
  sk_nulls_add_node_rcu(sk, &hslot->head);
  sock_prot_inuse_add(sock_net(sk), sk->sk_prot, 1);
 }
 error = 0;
fail_unlock:
 spin_unlock_bh(&hslot->lock);
fail:
 return error;
}
