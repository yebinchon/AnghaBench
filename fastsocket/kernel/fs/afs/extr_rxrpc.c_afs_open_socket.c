
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct socket {TYPE_1__* sk; } ;
struct TYPE_5__ {int sin_addr; int sin_port; int sin_family; } ;
struct TYPE_6__ {TYPE_2__ sin; } ;
struct sockaddr_rxrpc {int transport_len; TYPE_3__ transport; int transport_type; int srx_service; int srx_family; } ;
struct sockaddr {int dummy; } ;
typedef int srx ;
struct TYPE_4__ {int sk_allocation; } ;


 int AFS_CM_PORT ;
 int AF_INET ;
 int AF_RXRPC ;
 int CM_SERVICE ;
 int ENOMEM ;
 int GFP_NOFS ;
 int PF_INET ;
 int SOCK_DGRAM ;
 int _enter (char*) ;
 int _leave (char*,...) ;
 int afs_async_calls ;
 int afs_incoming_calls ;
 int afs_rx_interceptor ;
 struct socket* afs_socket ;
 int create_singlethread_workqueue (char*) ;
 int destroy_workqueue (int ) ;
 int htons (int ) ;
 int kernel_bind (struct socket*,struct sockaddr*,int) ;
 int memset (int *,int ,int) ;
 int rxrpc_kernel_intercept_rx_messages (struct socket*,int ) ;
 int skb_queue_head_init (int *) ;
 int sock_create_kern (int ,int ,int ,struct socket**) ;
 int sock_release (struct socket*) ;

int afs_open_socket(void)
{
 struct sockaddr_rxrpc srx;
 struct socket *socket;
 int ret;

 _enter("");

 skb_queue_head_init(&afs_incoming_calls);

 afs_async_calls = create_singlethread_workqueue("kafsd");
 if (!afs_async_calls) {
  _leave(" = -ENOMEM [wq]");
  return -ENOMEM;
 }

 ret = sock_create_kern(AF_RXRPC, SOCK_DGRAM, PF_INET, &socket);
 if (ret < 0) {
  destroy_workqueue(afs_async_calls);
  _leave(" = %d [socket]", ret);
  return ret;
 }

 socket->sk->sk_allocation = GFP_NOFS;


 srx.srx_family = AF_RXRPC;
 srx.srx_service = CM_SERVICE;
 srx.transport_type = SOCK_DGRAM;
 srx.transport_len = sizeof(srx.transport.sin);
 srx.transport.sin.sin_family = AF_INET;
 srx.transport.sin.sin_port = htons(AFS_CM_PORT);
 memset(&srx.transport.sin.sin_addr, 0,
        sizeof(srx.transport.sin.sin_addr));

 ret = kernel_bind(socket, (struct sockaddr *) &srx, sizeof(srx));
 if (ret < 0) {
  sock_release(socket);
  _leave(" = %d [bind]", ret);
  return ret;
 }

 rxrpc_kernel_intercept_rx_messages(socket, afs_rx_interceptor);

 afs_socket = socket;
 _leave(" = 0");
 return 0;
}
