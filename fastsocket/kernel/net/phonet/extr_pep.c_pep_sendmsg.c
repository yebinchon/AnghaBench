
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {int sk_state; TYPE_1__* sk_socket; } ;
struct sk_buff {int dummy; } ;
struct pep_sock {int tx_credits; } ;
struct msghdr {int msg_flags; int msg_iov; } ;
struct kiocb {int dummy; } ;
struct TYPE_2__ {int wait; } ;


 int BUG_ON (int) ;
 int DEFINE_WAIT (int ) ;
 int EAGAIN ;
 int ECONNRESET ;
 int ENOTCONN ;
 int EOPNOTSUPP ;
 scalar_t__ MAX_PHONET_HEADER ;
 scalar_t__ MAX_PNPIPE_HEADER ;
 int MSG_DONTWAIT ;
 int MSG_EOR ;
 int MSG_OOB ;
 int TASK_INTERRUPTIBLE ;
 int TCPF_CLOSE ;
 int TCPF_LISTEN ;
 int TCP_CLOSE_WAIT ;
 int TCP_ESTABLISHED ;
 int atomic_read (int *) ;
 int current ;
 int finish_wait (int *,int *) ;
 int kfree_skb (struct sk_buff*) ;
 int lock_sock (struct sock*) ;
 int memcpy_fromiovec (int ,int ,size_t) ;
 struct pep_sock* pep_sk (struct sock*) ;
 int pipe_skb_send (struct sock*,struct sk_buff*) ;
 int prepare_to_wait (int *,int *,int ) ;
 int release_sock (struct sock*) ;
 scalar_t__ signal_pending (int ) ;
 int sk_stream_wait_connect (struct sock*,long*) ;
 int sk_wait_event (struct sock*,long*,int) ;
 int skb_put (struct sk_buff*,size_t) ;
 int skb_reserve (struct sk_buff*,scalar_t__) ;
 struct sk_buff* sock_alloc_send_skb (struct sock*,scalar_t__,int,int*) ;
 int sock_intr_errno (long) ;
 long sock_sndtimeo (struct sock*,int) ;
 int wait ;

__attribute__((used)) static int pep_sendmsg(struct kiocb *iocb, struct sock *sk,
   struct msghdr *msg, size_t len)
{
 struct pep_sock *pn = pep_sk(sk);
 struct sk_buff *skb = ((void*)0);
 long timeo;
 int flags = msg->msg_flags;
 int err, done;

 if (msg->msg_flags & MSG_OOB || !(msg->msg_flags & MSG_EOR))
  return -EOPNOTSUPP;

 lock_sock(sk);
 timeo = sock_sndtimeo(sk, flags & MSG_DONTWAIT);
 if ((1 << sk->sk_state) & (TCPF_LISTEN|TCPF_CLOSE)) {
  err = -ENOTCONN;
  goto out;
 }
 if (sk->sk_state != TCP_ESTABLISHED) {

disabled:
  err = sk_stream_wait_connect(sk, &timeo);
  if (err)
   goto out;

  if (sk->sk_state == TCP_CLOSE_WAIT) {
   err = -ECONNRESET;
   goto out;
  }
 }
 BUG_ON(sk->sk_state != TCP_ESTABLISHED);


 done = atomic_read(&pn->tx_credits);
 while (!done) {
  DEFINE_WAIT(wait);

  if (!timeo) {
   err = -EAGAIN;
   goto out;
  }
  if (signal_pending(current)) {
   err = sock_intr_errno(timeo);
   goto out;
  }

  prepare_to_wait(&sk->sk_socket->wait, &wait,
    TASK_INTERRUPTIBLE);
  done = sk_wait_event(sk, &timeo, atomic_read(&pn->tx_credits));
  finish_wait(&sk->sk_socket->wait, &wait);

  if (sk->sk_state != TCP_ESTABLISHED)
   goto disabled;
 }

 if (!skb) {
  skb = sock_alloc_send_skb(sk, MAX_PNPIPE_HEADER + len,
      flags & MSG_DONTWAIT, &err);
  if (skb == ((void*)0))
   goto out;
  skb_reserve(skb, MAX_PHONET_HEADER + 3);

  if (sk->sk_state != TCP_ESTABLISHED ||
      !atomic_read(&pn->tx_credits))
   goto disabled;
 }

 err = memcpy_fromiovec(skb_put(skb, len), msg->msg_iov, len);
 if (err < 0)
  goto out;

 err = pipe_skb_send(sk, skb);
 if (err >= 0)
  err = len;
 skb = ((void*)0);
out:
 release_sock(sk);
 kfree_skb(skb);
 return err;
}
