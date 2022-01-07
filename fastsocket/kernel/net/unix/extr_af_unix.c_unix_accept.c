
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct socket {scalar_t__ type; int state; struct sock* sk; } ;
struct sock {scalar_t__ sk_state; } ;
struct sk_buff {struct sock* sk; } ;
struct TYPE_2__ {int peer_wait; } ;


 int EINVAL ;
 int EOPNOTSUPP ;
 int O_NONBLOCK ;
 scalar_t__ SOCK_SEQPACKET ;
 scalar_t__ SOCK_STREAM ;
 int SS_CONNECTED ;
 scalar_t__ TCP_LISTEN ;
 int skb_free_datagram (struct sock*,struct sk_buff*) ;
 struct sk_buff* skb_recv_datagram (struct sock*,int ,int,int*) ;
 int sock_graft (struct sock*,struct socket*) ;
 TYPE_1__* unix_sk (struct sock*) ;
 int unix_state_lock (struct sock*) ;
 int unix_state_unlock (struct sock*) ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static int unix_accept(struct socket *sock, struct socket *newsock, int flags)
{
 struct sock *sk = sock->sk;
 struct sock *tsk;
 struct sk_buff *skb;
 int err;

 err = -EOPNOTSUPP;
 if (sock->type != SOCK_STREAM && sock->type != SOCK_SEQPACKET)
  goto out;

 err = -EINVAL;
 if (sk->sk_state != TCP_LISTEN)
  goto out;





 skb = skb_recv_datagram(sk, 0, flags&O_NONBLOCK, &err);
 if (!skb) {

  if (err == 0)
   err = -EINVAL;
  goto out;
 }

 tsk = skb->sk;
 skb_free_datagram(sk, skb);
 wake_up_interruptible(&unix_sk(sk)->peer_wait);


 unix_state_lock(tsk);
 newsock->state = SS_CONNECTED;
 sock_graft(tsk, newsock);
 unix_state_unlock(tsk);
 return 0;

out:
 return err;
}
