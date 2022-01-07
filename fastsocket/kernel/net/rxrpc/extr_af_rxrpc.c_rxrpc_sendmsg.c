
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct socket {int sk; } ;
struct rxrpc_transport {int usage; } ;
struct TYPE_3__ {int sk_state; } ;
struct rxrpc_sock {TYPE_1__ sk; struct rxrpc_transport* trans; } ;
struct msghdr {int msg_flags; int msg_name; int msg_namelen; } ;
struct kiocb {int dummy; } ;


 int EISCONN ;
 int ENOTCONN ;
 int EOPNOTSUPP ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct rxrpc_transport*) ;
 int MSG_OOB ;
 int PTR_ERR (struct rxrpc_transport*) ;




 int _enter (char*,int,size_t) ;
 int _leave (char*,int) ;
 int atomic_inc (int *) ;
 int lock_sock (TYPE_1__*) ;
 int release_sock (TYPE_1__*) ;
 int rxrpc_client_sendmsg (struct kiocb*,struct rxrpc_sock*,struct rxrpc_transport*,struct msghdr*,size_t) ;
 struct rxrpc_transport* rxrpc_name_to_transport (struct socket*,int ,int ,int ,int ) ;
 int rxrpc_put_transport (struct rxrpc_transport*) ;
 int rxrpc_server_sendmsg (struct kiocb*,struct rxrpc_sock*,struct msghdr*,size_t) ;
 struct rxrpc_sock* rxrpc_sk (int ) ;
 int rxrpc_validate_address (struct rxrpc_sock*,int ,int ) ;

__attribute__((used)) static int rxrpc_sendmsg(struct kiocb *iocb, struct socket *sock,
    struct msghdr *m, size_t len)
{
 struct rxrpc_transport *trans;
 struct rxrpc_sock *rx = rxrpc_sk(sock->sk);
 int ret;

 _enter(",{%d},,%zu", rx->sk.sk_state, len);

 if (m->msg_flags & MSG_OOB)
  return -EOPNOTSUPP;

 if (m->msg_name) {
  ret = rxrpc_validate_address(rx, m->msg_name, m->msg_namelen);
  if (ret < 0) {
   _leave(" = %d [bad addr]", ret);
   return ret;
  }
 }

 trans = ((void*)0);
 lock_sock(&rx->sk);

 if (m->msg_name) {
  ret = -EISCONN;
  trans = rxrpc_name_to_transport(sock, m->msg_name,
      m->msg_namelen, 0, GFP_KERNEL);
  if (IS_ERR(trans)) {
   ret = PTR_ERR(trans);
   trans = ((void*)0);
   goto out;
  }
 } else {
  trans = rx->trans;
  if (trans)
   atomic_inc(&trans->usage);
 }

 switch (rx->sk.sk_state) {
 case 128:
  if (!m->msg_name) {
   ret = rxrpc_server_sendmsg(iocb, rx, m, len);
   break;
  }
 case 129:
 case 131:
  if (!m->msg_name) {
   ret = -ENOTCONN;
   break;
  }
 case 130:
  ret = rxrpc_client_sendmsg(iocb, rx, trans, m, len);
  break;
 default:
  ret = -ENOTCONN;
  break;
 }

out:
 release_sock(&rx->sk);
 if (trans)
  rxrpc_put_transport(trans);
 _leave(" = %d", ret);
 return ret;
}
