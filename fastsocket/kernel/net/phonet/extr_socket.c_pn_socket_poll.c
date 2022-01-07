
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int wait; struct sock* sk; } ;
struct sock {int sk_state; int sk_receive_queue; } ;
struct pep_sock {int tx_credits; int ctrlreq_queue; int ackq; } ;
struct file {int dummy; } ;
typedef int poll_table ;


 unsigned int POLLERR ;
 unsigned int POLLHUP ;
 unsigned int POLLIN ;
 unsigned int POLLOUT ;
 unsigned int POLLPRI ;
 unsigned int POLLRDNORM ;
 unsigned int POLLWRBAND ;
 unsigned int POLLWRNORM ;

 int TCP_CLOSE_WAIT ;
 int TCP_ESTABLISHED ;

 scalar_t__ atomic_read (int *) ;
 int hlist_empty (int *) ;
 struct pep_sock* pep_sk (struct sock*) ;
 int poll_wait (struct file*,int *,int *) ;
 int skb_queue_empty (int *) ;

__attribute__((used)) static unsigned int pn_socket_poll(struct file *file, struct socket *sock,
     poll_table *wait)
{
 struct sock *sk = sock->sk;
 struct pep_sock *pn = pep_sk(sk);
 unsigned int mask = 0;

 poll_wait(file, &sock->wait, wait);

 switch (sk->sk_state) {
 case 128:
  return hlist_empty(&pn->ackq) ? 0 : POLLIN;
 case 129:
  return POLLERR;
 }

 if (!skb_queue_empty(&sk->sk_receive_queue))
  mask |= POLLIN | POLLRDNORM;
 if (!skb_queue_empty(&pn->ctrlreq_queue))
  mask |= POLLPRI;
 if (!mask && sk->sk_state == TCP_CLOSE_WAIT)
  return POLLHUP;

 if (sk->sk_state == TCP_ESTABLISHED && atomic_read(&pn->tx_credits))
  mask |= POLLOUT | POLLWRNORM | POLLWRBAND;

 return mask;
}
