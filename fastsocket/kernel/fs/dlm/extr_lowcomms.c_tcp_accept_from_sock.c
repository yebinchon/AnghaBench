
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct socket {TYPE_2__* sk; TYPE_1__* ops; int type; } ;
struct sockaddr_storage {int dummy; } ;
struct sockaddr {int dummy; } ;
struct connection {int nodeid; int sock_mutex; int rwork; int flags; void* rx_action; struct socket* sock; struct connection* othercon; int swork; } ;
typedef int peeraddr ;
struct TYPE_6__ {int ss_family; } ;
struct TYPE_5__ {struct connection* sk_user_data; } ;
struct TYPE_4__ {int (* accept ) (struct socket*,struct socket*,int ) ;scalar_t__ (* getname ) (struct socket*,struct sockaddr*,int*,int) ;} ;


 int CF_IS_OTHERCON ;
 int CF_READ_PENDING ;
 int EAGAIN ;
 int ECONNABORTED ;
 int ENOMEM ;
 int ENOTCONN ;
 int GFP_NOFS ;
 int INIT_WORK (int *,int ) ;
 int IPPROTO_TCP ;
 int O_NONBLOCK ;
 int SOCK_STREAM ;
 int add_sock (struct socket*,struct connection*) ;
 scalar_t__ addr_to_nodeid (struct sockaddr_storage*,int*) ;
 int con_cache ;
 TYPE_3__** dlm_local_addr ;
 struct connection* kmem_cache_zalloc (int ,int ) ;
 int log_print (char*,...) ;
 int make_sockaddr (struct sockaddr_storage*,int ,int*) ;
 int memset (struct sockaddr_storage*,int ,int) ;
 int mutex_init (int *) ;
 int mutex_lock_nested (int *,int) ;
 int mutex_unlock (int *) ;
 struct connection* nodeid2con (int,int ) ;
 int printk (char*,int) ;
 int process_recv_sockets ;
 int process_send_sockets ;
 int queue_work (int ,int *) ;
 void* receive_from_sock ;
 int recv_workqueue ;
 int set_bit (int ,int *) ;
 int sock_create_kern (int ,int ,int ,struct socket**) ;
 int sock_release (struct socket*) ;
 int stub1 (struct socket*,struct socket*,int ) ;
 scalar_t__ stub2 (struct socket*,struct sockaddr*,int*,int) ;
 int test_and_set_bit (int ,int *) ;

__attribute__((used)) static int tcp_accept_from_sock(struct connection *con)
{
 int result;
 struct sockaddr_storage peeraddr;
 struct socket *newsock;
 int len;
 int nodeid;
 struct connection *newcon;
 struct connection *addcon;

 memset(&peeraddr, 0, sizeof(peeraddr));
 result = sock_create_kern(dlm_local_addr[0]->ss_family, SOCK_STREAM,
      IPPROTO_TCP, &newsock);
 if (result < 0)
  return -ENOMEM;

 mutex_lock_nested(&con->sock_mutex, 0);

 result = -ENOTCONN;
 if (con->sock == ((void*)0))
  goto accept_err;

 newsock->type = con->sock->type;
 newsock->ops = con->sock->ops;

 result = con->sock->ops->accept(con->sock, newsock, O_NONBLOCK);
 if (result < 0)
  goto accept_err;


 memset(&peeraddr, 0, sizeof(peeraddr));
 if (newsock->ops->getname(newsock, (struct sockaddr *)&peeraddr,
      &len, 2)) {
  result = -ECONNABORTED;
  goto accept_err;
 }


 make_sockaddr(&peeraddr, 0, &len);
 if (addr_to_nodeid(&peeraddr, &nodeid)) {
  log_print("connect from non cluster node");
  sock_release(newsock);
  mutex_unlock(&con->sock_mutex);
  return -1;
 }

 log_print("got connection from %d", nodeid);






 newcon = nodeid2con(nodeid, GFP_NOFS);
 if (!newcon) {
  result = -ENOMEM;
  goto accept_err;
 }
 mutex_lock_nested(&newcon->sock_mutex, 1);
 if (newcon->sock) {
  struct connection *othercon = newcon->othercon;

  if (!othercon) {
   othercon = kmem_cache_zalloc(con_cache, GFP_NOFS);
   if (!othercon) {
    log_print("failed to allocate incoming socket");
    mutex_unlock(&newcon->sock_mutex);
    result = -ENOMEM;
    goto accept_err;
   }
   othercon->nodeid = nodeid;
   othercon->rx_action = receive_from_sock;
   mutex_init(&othercon->sock_mutex);
   INIT_WORK(&othercon->swork, process_send_sockets);
   INIT_WORK(&othercon->rwork, process_recv_sockets);
   set_bit(CF_IS_OTHERCON, &othercon->flags);
  }
  if (!othercon->sock) {
   newcon->othercon = othercon;
   othercon->sock = newsock;
   newsock->sk->sk_user_data = othercon;
   add_sock(newsock, othercon);
   addcon = othercon;
  }
  else {
   printk("Extra connection from node %d attempted\n", nodeid);
   result = -EAGAIN;
   mutex_unlock(&newcon->sock_mutex);
   goto accept_err;
  }
 }
 else {
  newsock->sk->sk_user_data = newcon;
  newcon->rx_action = receive_from_sock;
  add_sock(newsock, newcon);
  addcon = newcon;
 }

 mutex_unlock(&newcon->sock_mutex);






 if (!test_and_set_bit(CF_READ_PENDING, &addcon->flags))
  queue_work(recv_workqueue, &addcon->rwork);
 mutex_unlock(&con->sock_mutex);

 return 0;

accept_err:
 mutex_unlock(&con->sock_mutex);
 sock_release(newsock);

 if (result != -EAGAIN)
  log_print("error accepting connection from node: %d", result);
 return result;
}
