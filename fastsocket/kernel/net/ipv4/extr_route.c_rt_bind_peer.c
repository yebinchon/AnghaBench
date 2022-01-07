
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtable {struct inet_peer* peer; int rt_dst; } ;
struct inet_peer {int dummy; } ;
typedef int DEFINE_SPINLOCK ;


 struct inet_peer* inet_getpeer (int ,int) ;
 int inet_putpeer (struct inet_peer*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

void rt_bind_peer(struct rtable *rt, int create)
{
 static DEFINE_SPINLOCK(rt_peer_lock);
 struct inet_peer *peer;

 peer = inet_getpeer(rt->rt_dst, create);

 spin_lock_bh(&rt_peer_lock);
 if (rt->peer == ((void*)0)) {
  rt->peer = peer;
  peer = ((void*)0);
 }
 spin_unlock_bh(&rt_peer_lock);
 if (peer)
  inet_putpeer(peer);
}
