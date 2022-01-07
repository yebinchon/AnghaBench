
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct sockaddr {int dummy; } ;
struct sock {struct rxrpc_local* sk_user_data; int sk_error_report; int sk_data_ready; } ;
struct TYPE_7__ {int transport_len; int transport; int transport_type; } ;
struct rxrpc_local {TYPE_2__* socket; int link; TYPE_1__ srx; } ;
typedef int sa_family_t ;
typedef int opt ;
struct TYPE_8__ {struct sock* sk; } ;


 int IPPROTO_UDP ;
 int IP_MTU_DISCOVER ;
 int IP_PMTUDISC_DO ;
 int IP_RECVERR ;
 int PF_INET ;
 int SHUT_RDWR ;
 int SOL_IP ;
 int _debug (char*) ;
 int _enter (char*,struct rxrpc_local*,int ) ;
 int _leave (char*,...) ;
 int kernel_bind (TYPE_2__*,struct sockaddr*,int) ;
 int kernel_setsockopt (TYPE_2__*,int ,int ,char*,int) ;
 int kernel_sock_shutdown (TYPE_2__*,int ) ;
 int list_add (int *,int *) ;
 int rxrpc_UDP_error_report ;
 int rxrpc_data_ready ;
 int rxrpc_local_lock ;
 int rxrpc_locals ;
 int sock_create_kern (int ,int ,int ,TYPE_2__**) ;
 int sock_release (TYPE_2__*) ;
 int write_lock_bh (int *) ;
 int write_unlock_bh (int *) ;

__attribute__((used)) static int rxrpc_create_local(struct rxrpc_local *local)
{
 struct sock *sock;
 int ret, opt;

 _enter("%p{%d}", local, local->srx.transport_type);


 ret = sock_create_kern(PF_INET, local->srx.transport_type, IPPROTO_UDP,
          &local->socket);
 if (ret < 0) {
  _leave(" = %d [socket]", ret);
  return ret;
 }


 if (local->srx.transport_len > sizeof(sa_family_t)) {
  _debug("bind");
  ret = kernel_bind(local->socket,
      (struct sockaddr *) &local->srx.transport,
      local->srx.transport_len);
  if (ret < 0) {
   _debug("bind failed");
   goto error;
  }
 }


 opt = 1;
 ret = kernel_setsockopt(local->socket, SOL_IP, IP_RECVERR,
    (char *) &opt, sizeof(opt));
 if (ret < 0) {
  _debug("setsockopt failed");
  goto error;
 }


 opt = IP_PMTUDISC_DO;
 ret = kernel_setsockopt(local->socket, SOL_IP, IP_MTU_DISCOVER,
    (char *) &opt, sizeof(opt));
 if (ret < 0) {
  _debug("setsockopt failed");
  goto error;
 }

 write_lock_bh(&rxrpc_local_lock);
 list_add(&local->link, &rxrpc_locals);
 write_unlock_bh(&rxrpc_local_lock);


 sock = local->socket->sk;
 sock->sk_user_data = local;
 sock->sk_data_ready = rxrpc_data_ready;
 sock->sk_error_report = rxrpc_UDP_error_report;
 _leave(" = 0");
 return 0;

error:
 kernel_sock_shutdown(local->socket, SHUT_RDWR);
 local->socket->sk->sk_user_data = ((void*)0);
 sock_release(local->socket);
 local->socket = ((void*)0);

 _leave(" = %d", ret);
 return ret;
}
