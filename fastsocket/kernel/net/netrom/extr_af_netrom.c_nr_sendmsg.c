
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {struct sock* sk; } ;
struct sockaddr_ax25 {scalar_t__ sax25_family; int sax25_call; } ;
struct sock {int sk_shutdown; scalar_t__ sk_state; } ;
struct sk_buff {int dummy; } ;
struct nr_sock {int your_id; int your_index; int dest_addr; int * device; } ;
struct msghdr {int msg_flags; int msg_namelen; int msg_iov; scalar_t__ msg_name; } ;
struct kiocb {int dummy; } ;
typedef int sax ;


 scalar_t__ AF_NETROM ;
 int EADDRNOTAVAIL ;
 int EFAULT ;
 int EINVAL ;
 int EISCONN ;
 int EMSGSIZE ;
 int ENETUNREACH ;
 int ENOTCONN ;
 int EPIPE ;
 int MSG_CMSG_COMPAT ;
 int MSG_DONTWAIT ;
 int MSG_EOR ;
 int NR_INFO ;
 size_t NR_NETWORK_LEN ;
 size_t NR_TRANSPORT_LEN ;
 int SEND_SHUTDOWN ;
 int SIGPIPE ;
 int SOCK_DEBUG (struct sock*,char*) ;
 int SOCK_ZAPPED ;
 scalar_t__ TCP_ESTABLISHED ;
 scalar_t__ ax25cmp (int *,int *) ;
 int current ;
 int kfree_skb (struct sk_buff*) ;
 int lock_sock (struct sock*) ;
 scalar_t__ memcpy_fromiovec (int ,int ,size_t) ;
 int nr_output (struct sock*,struct sk_buff*) ;
 struct nr_sock* nr_sk (struct sock*) ;
 int release_sock (struct sock*) ;
 int send_sig (int ,int ,int ) ;
 unsigned char* skb_push (struct sk_buff*,size_t) ;
 int skb_put (struct sk_buff*,size_t) ;
 int skb_reserve (struct sk_buff*,int) ;
 int skb_reset_transport_header (struct sk_buff*) ;
 int skb_transport_header (struct sk_buff*) ;
 struct sk_buff* sock_alloc_send_skb (struct sock*,int,int,int*) ;
 scalar_t__ sock_flag (struct sock*,int ) ;

__attribute__((used)) static int nr_sendmsg(struct kiocb *iocb, struct socket *sock,
        struct msghdr *msg, size_t len)
{
 struct sock *sk = sock->sk;
 struct nr_sock *nr = nr_sk(sk);
 struct sockaddr_ax25 *usax = (struct sockaddr_ax25 *)msg->msg_name;
 int err;
 struct sockaddr_ax25 sax;
 struct sk_buff *skb;
 unsigned char *asmptr;
 int size;

 if (msg->msg_flags & ~(MSG_DONTWAIT|MSG_EOR|MSG_CMSG_COMPAT))
  return -EINVAL;

 lock_sock(sk);
 if (sock_flag(sk, SOCK_ZAPPED)) {
  err = -EADDRNOTAVAIL;
  goto out;
 }

 if (sk->sk_shutdown & SEND_SHUTDOWN) {
  send_sig(SIGPIPE, current, 0);
  err = -EPIPE;
  goto out;
 }

 if (nr->device == ((void*)0)) {
  err = -ENETUNREACH;
  goto out;
 }

 if (usax) {
  if (msg->msg_namelen < sizeof(sax)) {
   err = -EINVAL;
   goto out;
  }
  sax = *usax;
  if (ax25cmp(&nr->dest_addr, &sax.sax25_call) != 0) {
   err = -EISCONN;
   goto out;
  }
  if (sax.sax25_family != AF_NETROM) {
   err = -EINVAL;
   goto out;
  }
 } else {
  if (sk->sk_state != TCP_ESTABLISHED) {
   err = -ENOTCONN;
   goto out;
  }
  sax.sax25_family = AF_NETROM;
  sax.sax25_call = nr->dest_addr;
 }

 SOCK_DEBUG(sk, "NET/ROM: sendto: Addresses built.\n");



 if (len > 65536) {
  err = -EMSGSIZE;
  goto out;
 }

 SOCK_DEBUG(sk, "NET/ROM: sendto: building packet.\n");
 size = len + NR_NETWORK_LEN + NR_TRANSPORT_LEN;

 if ((skb = sock_alloc_send_skb(sk, size, msg->msg_flags & MSG_DONTWAIT, &err)) == ((void*)0))
  goto out;

 skb_reserve(skb, size - len);
 skb_reset_transport_header(skb);





 asmptr = skb_push(skb, NR_TRANSPORT_LEN);
 SOCK_DEBUG(sk, "Building NET/ROM Header.\n");



 *asmptr++ = nr->your_index;
 *asmptr++ = nr->your_id;
 *asmptr++ = 0;
 *asmptr++ = 0;
 *asmptr++ = NR_INFO;
 SOCK_DEBUG(sk, "Built header.\n");




 skb_put(skb, len);

 SOCK_DEBUG(sk, "NET/ROM: Appending user data\n");


 if (memcpy_fromiovec(skb_transport_header(skb), msg->msg_iov, len)) {
  kfree_skb(skb);
  err = -EFAULT;
  goto out;
 }

 SOCK_DEBUG(sk, "NET/ROM: Transmitting buffer\n");

 if (sk->sk_state != TCP_ESTABLISHED) {
  kfree_skb(skb);
  err = -ENOTCONN;
  goto out;
 }

 nr_output(sk, skb);

 err = len;
out:
 release_sock(sk);
 return err;
}
