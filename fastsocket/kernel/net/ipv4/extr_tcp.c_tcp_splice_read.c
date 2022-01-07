
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tcp_splice_state {size_t len; unsigned int flags; struct pipe_inode_info* pipe; } ;
struct socket {TYPE_1__* file; struct sock* sk; } ;
struct sock {int sk_shutdown; scalar_t__ sk_state; scalar_t__ sk_err; } ;
struct pipe_inode_info {int dummy; } ;
typedef int ssize_t ;
typedef int loff_t ;
struct TYPE_2__ {int f_flags; } ;


 int EAGAIN ;
 int ENOTCONN ;
 int ESPIPE ;
 int O_NONBLOCK ;
 int RCV_SHUTDOWN ;
 int SOCK_DONE ;
 scalar_t__ TCP_CLOSE ;
 int __tcp_splice_read (struct sock*,struct tcp_splice_state*) ;
 int current ;
 int lock_sock (struct sock*) ;
 int release_sock (struct sock*) ;
 scalar_t__ signal_pending (int ) ;
 int sk_wait_data (struct sock*,long*) ;
 int sock_error (struct sock*) ;
 scalar_t__ sock_flag (struct sock*,int ) ;
 int sock_intr_errno (long) ;
 long sock_rcvtimeo (struct sock*,int) ;
 scalar_t__ unlikely (int ) ;

ssize_t tcp_splice_read(struct socket *sock, loff_t *ppos,
   struct pipe_inode_info *pipe, size_t len,
   unsigned int flags)
{
 struct sock *sk = sock->sk;
 struct tcp_splice_state tss = {
  .pipe = pipe,
  .len = len,
  .flags = flags,
 };
 long timeo;
 ssize_t spliced;
 int ret;




 if (unlikely(*ppos))
  return -ESPIPE;

 ret = spliced = 0;

 lock_sock(sk);

 timeo = sock_rcvtimeo(sk, sock->file->f_flags & O_NONBLOCK);
 while (tss.len) {
  ret = __tcp_splice_read(sk, &tss);
  if (ret < 0)
   break;
  else if (!ret) {
   if (spliced)
    break;
   if (sock_flag(sk, SOCK_DONE))
    break;
   if (sk->sk_err) {
    ret = sock_error(sk);
    break;
   }
   if (sk->sk_shutdown & RCV_SHUTDOWN)
    break;
   if (sk->sk_state == TCP_CLOSE) {




    if (!sock_flag(sk, SOCK_DONE))
     ret = -ENOTCONN;
    break;
   }
   if (!timeo) {
    ret = -EAGAIN;
    break;
   }
   sk_wait_data(sk, &timeo);
   if (signal_pending(current)) {
    ret = sock_intr_errno(timeo);
    break;
   }
   continue;
  }
  tss.len -= ret;
  spliced += ret;

  if (!timeo)
   break;
  release_sock(sk);
  lock_sock(sk);

  if (sk->sk_err || sk->sk_state == TCP_CLOSE ||
      (sk->sk_shutdown & RCV_SHUTDOWN) ||
      signal_pending(current))
   break;
 }

 release_sock(sk);

 if (spliced)
  return spliced;

 return ret;
}
