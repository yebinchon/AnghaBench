
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tipc_port {int ref; int lock; } ;
struct socket {int type; int state; struct proto_ops const* ops; } ;
struct sock {int sk_backlog_rcv; int sk_rcvtimeo; } ;
struct proto_ops {int dummy; } ;
struct net {int dummy; } ;
typedef int socket_state ;
struct TYPE_2__ {struct tipc_port* p; } ;


 int AF_TIPC ;
 int CONN_TIMEOUT_DEFAULT ;
 int EAFNOSUPPORT ;
 int ENOMEM ;
 int EPROTONOSUPPORT ;
 int EPROTOTYPE ;
 int GFP_KERNEL ;




 int SS_READY ;
 int SS_UNCONNECTED ;
 int TIPC_LOW_IMPORTANCE ;
 int atomic_inc (int *) ;
 int backlog_rcv ;
 int dispatch ;
 struct net init_net ;
 int msecs_to_jiffies (int ) ;
 struct proto_ops msg_ops ;
 struct proto_ops packet_ops ;
 struct sock* sk_alloc (struct net*,int ,int ,int *) ;
 int sk_free (struct sock*) ;
 int sock_init_data (struct socket*,struct sock*) ;
 int spin_unlock_bh (int ) ;
 struct proto_ops stream_ops ;
 struct tipc_port* tipc_createport_raw (struct sock*,int *,int *,int ) ;
 int tipc_proto ;
 int tipc_set_portunreliable (int ,int) ;
 int tipc_set_portunreturnable (int ,int) ;
 TYPE_1__* tipc_sk (struct sock*) ;
 int tipc_user_count ;
 scalar_t__ unlikely (int) ;
 int wakeupdispatch ;

__attribute__((used)) static int tipc_create(struct net *net, struct socket *sock, int protocol,
         int kern)
{
 const struct proto_ops *ops;
 socket_state state;
 struct sock *sk;
 struct tipc_port *tp_ptr;



 if (net != &init_net)
  return -EAFNOSUPPORT;

 if (unlikely(protocol != 0))
  return -EPROTONOSUPPORT;

 switch (sock->type) {
 case 128:
  ops = &stream_ops;
  state = SS_UNCONNECTED;
  break;
 case 129:
  ops = &packet_ops;
  state = SS_UNCONNECTED;
  break;
 case 131:
 case 130:
  ops = &msg_ops;
  state = SS_READY;
  break;
 default:
  return -EPROTOTYPE;
 }



 sk = sk_alloc(net, AF_TIPC, GFP_KERNEL, &tipc_proto);
 if (sk == ((void*)0))
  return -ENOMEM;



 tp_ptr = tipc_createport_raw(sk, &dispatch, &wakeupdispatch,
         TIPC_LOW_IMPORTANCE);
 if (unlikely(!tp_ptr)) {
  sk_free(sk);
  return -ENOMEM;
 }



 sock->ops = ops;
 sock->state = state;

 sock_init_data(sock, sk);
 sk->sk_rcvtimeo = msecs_to_jiffies(CONN_TIMEOUT_DEFAULT);
 sk->sk_backlog_rcv = backlog_rcv;
 tipc_sk(sk)->p = tp_ptr;

 spin_unlock_bh(tp_ptr->lock);

 if (sock->state == SS_READY) {
  tipc_set_portunreturnable(tp_ptr->ref, 1);
  if (sock->type == 131)
   tipc_set_portunreliable(tp_ptr->ref, 1);
 }

 atomic_inc(&tipc_user_count);
 return 0;
}
