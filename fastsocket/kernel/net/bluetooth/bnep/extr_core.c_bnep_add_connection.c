
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int ulong ;
typedef int u8 ;
struct socket {int sk; } ;
struct net_device {int name; int broadcast; int ** dev_addr; } ;
struct TYPE_5__ {int msg_flags; } ;
struct TYPE_4__ {int ** h_dest; int ** h_source; } ;
struct bnep_session {scalar_t__ state; int mc_filter; TYPE_2__ msg; int role; struct socket* sock; struct net_device* dev; TYPE_1__ eh; } ;
struct bnep_connadd_req {char* device; int role; } ;
struct TYPE_6__ {int src; int dst; } ;


 scalar_t__ BT_CONNECTED ;
 int BT_DBG (char*) ;
 int CLONE_KERNEL ;
 int EEXIST ;
 int ENOMEM ;
 int ETH_ALEN ;
 int MSG_NOSIGNAL ;
 int SET_NETDEV_DEV (struct net_device*,int ) ;
 int SET_NETDEV_DEVTYPE (struct net_device*,int *) ;
 struct bnep_session* __bnep_get_session (int *) ;
 int __bnep_link_session (struct bnep_session*) ;
 int __bnep_unlink_session (struct bnep_session*) ;
 struct net_device* alloc_netdev (int,char*,int ) ;
 int baswap (void*,int *) ;
 int bnep_get_device (struct bnep_session*) ;
 int bnep_mc_hash (int ) ;
 int bnep_net_setup ;
 int bnep_session ;
 int bnep_session_sem ;
 int bnep_set_default_proto_filter (struct bnep_session*) ;
 int bnep_type ;
 TYPE_3__* bt_sk (int ) ;
 int down_write (int *) ;
 int free_netdev (struct net_device*) ;
 int kernel_thread (int ,struct bnep_session*,int ) ;
 int memcpy (int **,int **,int) ;
 struct bnep_session* netdev_priv (struct net_device*) ;
 int register_netdev (struct net_device*) ;
 int set_bit (int ,int *) ;
 int strcpy (char*,int ) ;
 int unregister_netdev (struct net_device*) ;
 int up_write (int *) ;

int bnep_add_connection(struct bnep_connadd_req *req, struct socket *sock)
{
 struct net_device *dev;
 struct bnep_session *s, *ss;
 u8 dst[ETH_ALEN], src[ETH_ALEN];
 int err;

 BT_DBG("");

 baswap((void *) dst, &bt_sk(sock->sk)->dst);
 baswap((void *) src, &bt_sk(sock->sk)->src);


 dev = alloc_netdev(sizeof(struct bnep_session),
      (*req->device) ? req->device : "bnep%d",
      bnep_net_setup);
 if (!dev)
  return -ENOMEM;

 down_write(&bnep_session_sem);

 ss = __bnep_get_session(dst);
 if (ss && ss->state == BT_CONNECTED) {
  err = -EEXIST;
  goto failed;
 }

 s = netdev_priv(dev);



 memcpy(s->eh.h_dest, &src, ETH_ALEN);
 memcpy(s->eh.h_source, &dst, ETH_ALEN);
 memcpy(dev->dev_addr, s->eh.h_dest, ETH_ALEN);

 s->dev = dev;
 s->sock = sock;
 s->role = req->role;
 s->state = BT_CONNECTED;

 s->msg.msg_flags = MSG_NOSIGNAL;
 SET_NETDEV_DEV(dev, bnep_get_device(s));
 SET_NETDEV_DEVTYPE(dev, &bnep_type);

 err = register_netdev(dev);
 if (err) {
  goto failed;
 }

 __bnep_link_session(s);

 err = kernel_thread(bnep_session, s, CLONE_KERNEL);
 if (err < 0) {

  unregister_netdev(dev);
  __bnep_unlink_session(s);
  goto failed;
 }

 up_write(&bnep_session_sem);
 strcpy(req->device, dev->name);
 return 0;

failed:
 up_write(&bnep_session_sem);
 free_netdev(dev);
 return err;
}
