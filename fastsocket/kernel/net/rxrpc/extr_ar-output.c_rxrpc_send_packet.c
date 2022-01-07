
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct sk_buff {int len; int head; } ;
struct rxrpc_transport {TYPE_4__* peer; TYPE_3__* local; } ;
struct rxrpc_header {int dummy; } ;
struct msghdr {int msg_namelen; scalar_t__ msg_flags; scalar_t__ msg_controllen; int * msg_control; int * msg_name; } ;
struct kvec {int iov_len; int iov_base; } ;
typedef int opt ;
struct TYPE_5__ {int sin; } ;
struct TYPE_6__ {TYPE_1__ transport; } ;
struct TYPE_8__ {int maxdata; TYPE_2__ srx; } ;
struct TYPE_7__ {int defrag_sem; int socket; } ;


 int EMSGSIZE ;
 int IP_MTU_DISCOVER ;
 int IP_PMTUDISC_DO ;
 int IP_PMTUDISC_DONT ;
 int SOL_IP ;
 int _debug (char*) ;
 int _enter (char*,int) ;
 int _leave (char*,int,int) ;
 int down_read (int *) ;
 int down_write (int *) ;
 int kernel_sendmsg (int ,struct msghdr*,struct kvec*,int,int) ;
 int kernel_setsockopt (int ,int ,int ,char*,int) ;
 int up_read (int *) ;
 int up_write (int *) ;

int rxrpc_send_packet(struct rxrpc_transport *trans, struct sk_buff *skb)
{
 struct kvec iov[1];
 struct msghdr msg;
 int ret, opt;

 _enter(",{%d}", skb->len);

 iov[0].iov_base = skb->head;
 iov[0].iov_len = skb->len;

 msg.msg_name = &trans->peer->srx.transport.sin;
 msg.msg_namelen = sizeof(trans->peer->srx.transport.sin);
 msg.msg_control = ((void*)0);
 msg.msg_controllen = 0;
 msg.msg_flags = 0;



 if (skb->len - sizeof(struct rxrpc_header) < trans->peer->maxdata) {
  down_read(&trans->local->defrag_sem);






  ret = kernel_sendmsg(trans->local->socket, &msg, iov, 1,
         iov[0].iov_len);

  up_read(&trans->local->defrag_sem);
  if (ret == -EMSGSIZE)
   goto send_fragmentable;

  _leave(" = %d [%u]", ret, trans->peer->maxdata);
  return ret;
 }

send_fragmentable:

 _debug("send fragment");

 down_write(&trans->local->defrag_sem);
 opt = IP_PMTUDISC_DONT;
 ret = kernel_setsockopt(trans->local->socket, SOL_IP, IP_MTU_DISCOVER,
    (char *) &opt, sizeof(opt));
 if (ret == 0) {
  ret = kernel_sendmsg(trans->local->socket, &msg, iov, 1,
         iov[0].iov_len);

  opt = IP_PMTUDISC_DO;
  kernel_setsockopt(trans->local->socket, SOL_IP,
      IP_MTU_DISCOVER, (char *) &opt, sizeof(opt));
 }

 up_write(&trans->local->defrag_sem);
 _leave(" = %d [frag %u]", ret, trans->peer->maxdata);
 return ret;
}
