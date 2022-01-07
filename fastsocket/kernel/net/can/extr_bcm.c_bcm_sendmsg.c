
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct socket {struct sock* sk; } ;
struct sockaddr_can {scalar_t__ can_family; int can_ifindex; } ;
struct sock {int dummy; } ;
struct net_device {scalar_t__ type; } ;
struct msghdr {int msg_iov; scalar_t__ msg_name; } ;
struct kiocb {int dummy; } ;
struct bcm_sock {int ifindex; int rx_ops; int tx_ops; int bound; } ;
struct bcm_msg_head {int opcode; int nframes; int can_id; } ;


 scalar_t__ AF_CAN ;
 scalar_t__ ARPHRD_CAN ;
 size_t CFSIZ ;
 int EINVAL ;
 int ENODEV ;
 int ENOTCONN ;
 size_t MHSIZ ;



 int RX_STATUS ;




 int TX_STATUS ;
 int bcm_delete_rx_op (int *,int ,int) ;
 int bcm_delete_tx_op (int *,int ,int) ;
 int bcm_read_op (int *,struct bcm_msg_head*,int) ;
 int bcm_rx_setup (struct bcm_msg_head*,struct msghdr*,int,struct sock*) ;
 struct bcm_sock* bcm_sk (struct sock*) ;
 int bcm_tx_send (struct msghdr*,int,struct sock*) ;
 int bcm_tx_setup (struct bcm_msg_head*,struct msghdr*,int,struct sock*) ;
 struct net_device* dev_get_by_index (int *,int) ;
 int dev_put (struct net_device*) ;
 int init_net ;
 int lock_sock (struct sock*) ;
 int memcpy_fromiovec (int *,int ,size_t) ;
 int release_sock (struct sock*) ;

__attribute__((used)) static int bcm_sendmsg(struct kiocb *iocb, struct socket *sock,
         struct msghdr *msg, size_t size)
{
 struct sock *sk = sock->sk;
 struct bcm_sock *bo = bcm_sk(sk);
 int ifindex = bo->ifindex;
 struct bcm_msg_head msg_head;
 int ret;

 if (!bo->bound)
  return -ENOTCONN;


 if (size < MHSIZ || (size - MHSIZ) % CFSIZ)
  return -EINVAL;



 if (!ifindex && msg->msg_name) {

  struct sockaddr_can *addr =
   (struct sockaddr_can *)msg->msg_name;

  if (addr->can_family != AF_CAN)
   return -EINVAL;


  ifindex = addr->can_ifindex;

  if (ifindex) {
   struct net_device *dev;

   dev = dev_get_by_index(&init_net, ifindex);
   if (!dev)
    return -ENODEV;

   if (dev->type != ARPHRD_CAN) {
    dev_put(dev);
    return -ENODEV;
   }

   dev_put(dev);
  }
 }



 ret = memcpy_fromiovec((u8 *)&msg_head, msg->msg_iov, MHSIZ);
 if (ret < 0)
  return ret;

 lock_sock(sk);

 switch (msg_head.opcode) {

 case 128:
  ret = bcm_tx_setup(&msg_head, msg, ifindex, sk);
  break;

 case 132:
  ret = bcm_rx_setup(&msg_head, msg, ifindex, sk);
  break;

 case 131:
  if (bcm_delete_tx_op(&bo->tx_ops, msg_head.can_id, ifindex))
   ret = MHSIZ;
  else
   ret = -EINVAL;
  break;

 case 134:
  if (bcm_delete_rx_op(&bo->rx_ops, msg_head.can_id, ifindex))
   ret = MHSIZ;
  else
   ret = -EINVAL;
  break;

 case 130:

  msg_head.opcode = TX_STATUS;
  ret = bcm_read_op(&bo->tx_ops, &msg_head, ifindex);
  break;

 case 133:

  msg_head.opcode = RX_STATUS;
  ret = bcm_read_op(&bo->rx_ops, &msg_head, ifindex);
  break;

 case 129:

  if ((msg_head.nframes != 1) || (size != CFSIZ + MHSIZ))
   ret = -EINVAL;
  else
   ret = bcm_tx_send(msg, ifindex, sk);
  break;

 default:
  ret = -EINVAL;
  break;
 }

 release_sock(sk);

 return ret;
}
