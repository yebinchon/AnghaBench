
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {struct sock* sk; } ;
struct sock {int sk_shutdown; } ;
struct file {int f_flags; } ;
typedef int poll_table ;


 int O_NONBLOCK ;
 unsigned int POLLIN ;
 unsigned int POLLRDNORM ;
 int RCV_SHUTDOWN ;
 unsigned int datagram_poll (struct file*,struct socket*,int *) ;
 int first_packet_length (struct sock*) ;
 int inet_sock_cpu_or_flow_record (struct sock*) ;

unsigned int udp_poll(struct file *file, struct socket *sock, poll_table *wait)
{
 unsigned int mask = datagram_poll(file, sock, wait);
 struct sock *sk = sock->sk;

 inet_sock_cpu_or_flow_record(sk);


 if ((mask & POLLRDNORM) && !(file->f_flags & O_NONBLOCK) &&
     !(sk->sk_shutdown & RCV_SHUTDOWN) && !first_packet_length(sk))
  mask &= ~(POLLIN | POLLRDNORM);

 return mask;

}
