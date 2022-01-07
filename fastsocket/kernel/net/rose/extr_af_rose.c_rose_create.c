
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {scalar_t__ type; int * ops; } ;
struct sock {int sk_protocol; } ;
struct rose_sock {int state; void* idle; void* hb; void* t3; void* t2; void* t1; int idletimer; int timer; scalar_t__ fraglen; int frag_queue; int ack_queue; } ;
struct net {int dummy; } ;


 int EAFNOSUPPORT ;
 int ENOMEM ;
 int ESOCKTNOSUPPORT ;
 int GFP_ATOMIC ;
 int PF_ROSE ;
 int ROSE_STATE_0 ;
 scalar_t__ SOCK_SEQPACKET ;
 struct net init_net ;
 int init_timer (int *) ;
 void* msecs_to_jiffies (int ) ;
 int rose_proto ;
 int rose_proto_ops ;
 struct rose_sock* rose_sk (struct sock*) ;
 struct sock* sk_alloc (struct net*,int ,int ,int *) ;
 int skb_queue_head_init (int *) ;
 int sock_init_data (struct socket*,struct sock*) ;
 int sysctl_rose_ack_hold_back_timeout ;
 int sysctl_rose_call_request_timeout ;
 int sysctl_rose_clear_request_timeout ;
 int sysctl_rose_no_activity_timeout ;
 int sysctl_rose_reset_request_timeout ;

__attribute__((used)) static int rose_create(struct net *net, struct socket *sock, int protocol,
         int kern)
{
 struct sock *sk;
 struct rose_sock *rose;

 if (net != &init_net)
  return -EAFNOSUPPORT;

 if (sock->type != SOCK_SEQPACKET || protocol != 0)
  return -ESOCKTNOSUPPORT;

 sk = sk_alloc(net, PF_ROSE, GFP_ATOMIC, &rose_proto);
 if (sk == ((void*)0))
  return -ENOMEM;

 rose = rose_sk(sk);

 sock_init_data(sock, sk);

 skb_queue_head_init(&rose->ack_queue);





 sock->ops = &rose_proto_ops;
 sk->sk_protocol = protocol;

 init_timer(&rose->timer);
 init_timer(&rose->idletimer);

 rose->t1 = msecs_to_jiffies(sysctl_rose_call_request_timeout);
 rose->t2 = msecs_to_jiffies(sysctl_rose_reset_request_timeout);
 rose->t3 = msecs_to_jiffies(sysctl_rose_clear_request_timeout);
 rose->hb = msecs_to_jiffies(sysctl_rose_ack_hold_back_timeout);
 rose->idle = msecs_to_jiffies(sysctl_rose_no_activity_timeout);

 rose->state = ROSE_STATE_0;

 return 0;
}
