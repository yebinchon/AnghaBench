
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct tpacket_req {int dummy; } ;
struct socket {struct sock* sk; } ;
struct sock {int sk_receive_queue; int sk_prot; } ;
struct TYPE_6__ {scalar_t__ pg_vec; } ;
struct TYPE_5__ {scalar_t__ pg_vec; } ;
struct packet_sock {TYPE_3__ tx_ring; TYPE_2__ rx_ring; scalar_t__ num; scalar_t__ running; int prot_hook; } ;
struct TYPE_4__ {int sklist_lock; } ;
struct net {TYPE_1__ packet; } ;
typedef int req ;


 int __sock_put (struct sock*) ;
 int dev_remove_pack (int *) ;
 int memset (struct tpacket_req*,int ,int) ;
 int packet_flush_mclist (struct sock*) ;
 int packet_set_ring (struct sock*,struct tpacket_req*,int,int) ;
 struct packet_sock* pkt_sk (struct sock*) ;
 int sk_del_node_init (struct sock*) ;
 int sk_refcnt_debug_release (struct sock*) ;
 int skb_queue_purge (int *) ;
 struct net* sock_net (struct sock*) ;
 int sock_orphan (struct sock*) ;
 int sock_prot_inuse_add (struct net*,int ,int) ;
 int sock_put (struct sock*) ;
 int write_lock_bh (int *) ;
 int write_unlock_bh (int *) ;

__attribute__((used)) static int packet_release(struct socket *sock)
{
 struct sock *sk = sock->sk;
 struct packet_sock *po;
 struct net *net;




 if (!sk)
  return 0;

 net = sock_net(sk);
 po = pkt_sk(sk);

 write_lock_bh(&net->packet.sklist_lock);
 sk_del_node_init(sk);
 sock_prot_inuse_add(net, sk->sk_prot, -1);
 write_unlock_bh(&net->packet.sklist_lock);





 if (po->running) {



  dev_remove_pack(&po->prot_hook);
  po->running = 0;
  po->num = 0;
  __sock_put(sk);
 }

 packet_flush_mclist(sk);
 sock_orphan(sk);
 sock->sk = ((void*)0);



 skb_queue_purge(&sk->sk_receive_queue);
 sk_refcnt_debug_release(sk);

 sock_put(sk);
 return 0;
}
