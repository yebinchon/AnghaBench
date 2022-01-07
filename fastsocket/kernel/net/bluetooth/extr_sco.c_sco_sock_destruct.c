
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int sk_write_queue; int sk_receive_queue; } ;


 int BT_DBG (char*,struct sock*) ;
 int skb_queue_purge (int *) ;

__attribute__((used)) static void sco_sock_destruct(struct sock *sk)
{
 BT_DBG("sk %p", sk);

 skb_queue_purge(&sk->sk_receive_queue);
 skb_queue_purge(&sk->sk_write_queue);
}
