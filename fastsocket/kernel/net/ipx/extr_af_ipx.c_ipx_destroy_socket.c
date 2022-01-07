
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int sk_receive_queue; } ;


 int ipx_remove_socket (struct sock*) ;
 int sk_refcnt_debug_dec (struct sock*) ;
 int skb_queue_purge (int *) ;
 int sock_put (struct sock*) ;

__attribute__((used)) static void ipx_destroy_socket(struct sock *sk)
{
 ipx_remove_socket(sk);
 skb_queue_purge(&sk->sk_receive_queue);
 sk_refcnt_debug_dec(sk);
 sock_put(sk);
}
