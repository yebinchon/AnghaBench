
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {struct sock* sk; } ;
struct sockaddr_rose {int dummy; } ;
struct sock {int sk_shutdown; scalar_t__ sk_state; int sk_write_queue; } ;
struct sk_buff {int* data; size_t len; int free; int arp; struct sock* sk; } ;
struct rose_sock {int dest_ndigis; int lci; scalar_t__ qbitincl; int * dest_digis; int dest_call; int dest_addr; int * device; int * neighbour; } ;
struct msghdr {int msg_flags; int msg_namelen; int msg_iov; scalar_t__ msg_name; } ;
struct kiocb {int dummy; } ;
struct full_sockaddr_rose {int srose_ndigis; scalar_t__ srose_family; int * srose_digis; int srose_call; int srose_addr; } ;


 scalar_t__ AF_ROSE ;
 size_t AX25_BPQ_HEADER_LEN ;
 size_t AX25_MAX_HEADER_LEN ;
 int EADDRNOTAVAIL ;
 int EINVAL ;
 int EISCONN ;
 int EMSGSIZE ;
 int ENETUNREACH ;
 int ENOTCONN ;
 int EPIPE ;
 int MSG_CMSG_COMPAT ;
 int MSG_DONTWAIT ;
 int MSG_EOR ;
 int M_BIT ;
 unsigned char ROSE_DATA ;
 int ROSE_GFI ;
 size_t ROSE_MIN_LEN ;
 size_t ROSE_PACLEN ;
 unsigned char ROSE_Q_BIT ;
 int SEND_SHUTDOWN ;
 int SIGPIPE ;
 int SOCK_DEBUG (struct sock*,char*) ;
 int SOCK_ZAPPED ;
 scalar_t__ TCP_ESTABLISHED ;
 scalar_t__ ax25cmp (int *,int *) ;
 int current ;
 int kfree_skb (struct sk_buff*) ;
 int memcpy (struct full_sockaddr_rose*,struct sockaddr_rose*,int) ;
 int memcpy_fromiovec (int ,int ,size_t) ;
 int memset (struct full_sockaddr_rose*,int ,int) ;
 int rose_kick (struct sock*) ;
 struct rose_sock* rose_sk (struct sock*) ;
 scalar_t__ rosecmp (int *,int *) ;
 int send_sig (int ,int ,int ) ;
 int skb_copy_from_linear_data (struct sk_buff*,unsigned char*,int) ;
 int skb_copy_to_linear_data (struct sk_buff*,unsigned char*,size_t) ;
 int skb_headroom (struct sk_buff*) ;
 int skb_pull (struct sk_buff*,int) ;
 unsigned char* skb_push (struct sk_buff*,size_t) ;
 unsigned char* skb_put (struct sk_buff*,int) ;
 int skb_queue_tail (int *,struct sk_buff*) ;
 int skb_reserve (struct sk_buff*,int) ;
 int skb_reset_transport_header (struct sk_buff*) ;
 int skb_transport_header (struct sk_buff*) ;
 struct sk_buff* sock_alloc_send_skb (struct sock*,int,int,int*) ;
 scalar_t__ sock_flag (struct sock*,int ) ;

__attribute__((used)) static int rose_sendmsg(struct kiocb *iocb, struct socket *sock,
   struct msghdr *msg, size_t len)
{
 struct sock *sk = sock->sk;
 struct rose_sock *rose = rose_sk(sk);
 struct sockaddr_rose *usrose = (struct sockaddr_rose *)msg->msg_name;
 int err;
 struct full_sockaddr_rose srose;
 struct sk_buff *skb;
 unsigned char *asmptr;
 int n, size, qbit = 0;

 if (msg->msg_flags & ~(MSG_DONTWAIT|MSG_EOR|MSG_CMSG_COMPAT))
  return -EINVAL;

 if (sock_flag(sk, SOCK_ZAPPED))
  return -EADDRNOTAVAIL;

 if (sk->sk_shutdown & SEND_SHUTDOWN) {
  send_sig(SIGPIPE, current, 0);
  return -EPIPE;
 }

 if (rose->neighbour == ((void*)0) || rose->device == ((void*)0))
  return -ENETUNREACH;

 if (usrose != ((void*)0)) {
  if (msg->msg_namelen != sizeof(struct sockaddr_rose) && msg->msg_namelen != sizeof(struct full_sockaddr_rose))
   return -EINVAL;
  memset(&srose, 0, sizeof(struct full_sockaddr_rose));
  memcpy(&srose, usrose, msg->msg_namelen);
  if (rosecmp(&rose->dest_addr, &srose.srose_addr) != 0 ||
      ax25cmp(&rose->dest_call, &srose.srose_call) != 0)
   return -EISCONN;
  if (srose.srose_ndigis != rose->dest_ndigis)
   return -EISCONN;
  if (srose.srose_ndigis == rose->dest_ndigis) {
   for (n = 0 ; n < srose.srose_ndigis ; n++)
    if (ax25cmp(&rose->dest_digis[n],
         &srose.srose_digis[n]))
     return -EISCONN;
  }
  if (srose.srose_family != AF_ROSE)
   return -EINVAL;
 } else {
  if (sk->sk_state != TCP_ESTABLISHED)
   return -ENOTCONN;

  srose.srose_family = AF_ROSE;
  srose.srose_addr = rose->dest_addr;
  srose.srose_call = rose->dest_call;
  srose.srose_ndigis = rose->dest_ndigis;
  for (n = 0 ; n < rose->dest_ndigis ; n++)
   srose.srose_digis[n] = rose->dest_digis[n];
 }

 SOCK_DEBUG(sk, "ROSE: sendto: Addresses built.\n");


 SOCK_DEBUG(sk, "ROSE: sendto: building packet.\n");

 if (len > 65535)
  return -EMSGSIZE;

 size = len + AX25_BPQ_HEADER_LEN + AX25_MAX_HEADER_LEN + ROSE_MIN_LEN;

 if ((skb = sock_alloc_send_skb(sk, size, msg->msg_flags & MSG_DONTWAIT, &err)) == ((void*)0))
  return err;

 skb_reserve(skb, AX25_BPQ_HEADER_LEN + AX25_MAX_HEADER_LEN + ROSE_MIN_LEN);




 SOCK_DEBUG(sk, "ROSE: Appending user data\n");

 skb_reset_transport_header(skb);
 skb_put(skb, len);

 err = memcpy_fromiovec(skb_transport_header(skb), msg->msg_iov, len);
 if (err) {
  kfree_skb(skb);
  return err;
 }





 if (rose->qbitincl) {
  qbit = skb->data[0];
  skb_pull(skb, 1);
 }




 asmptr = skb_push(skb, ROSE_MIN_LEN);

 SOCK_DEBUG(sk, "ROSE: Building Network Header.\n");


 asmptr[0] = ((rose->lci >> 8) & 0x0F) | ROSE_GFI;
 asmptr[1] = (rose->lci >> 0) & 0xFF;
 asmptr[2] = ROSE_DATA;

 if (qbit)
  asmptr[0] |= ROSE_Q_BIT;

 SOCK_DEBUG(sk, "ROSE: Built header.\n");

 SOCK_DEBUG(sk, "ROSE: Transmitting buffer\n");

 if (sk->sk_state != TCP_ESTABLISHED) {
  kfree_skb(skb);
  return -ENOTCONN;
 }
 skb_queue_tail(&sk->sk_write_queue, skb);


 rose_kick(sk);

 return len;
}
