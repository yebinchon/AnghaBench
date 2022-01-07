
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {struct sock* sk; } ;
struct sockaddr_can {scalar_t__ can_ifindex; } ;
struct sockaddr {int dummy; } ;
struct sock {int dummy; } ;
struct net_device {scalar_t__ type; scalar_t__ ifindex; } ;
struct bcm_sock {int bound; int procname; int bcm_proc_read; scalar_t__ ifindex; } ;


 scalar_t__ ARPHRD_CAN ;
 int EISCONN ;
 int ENODEV ;
 int bcm_proc_fops ;
 struct bcm_sock* bcm_sk (struct sock*) ;
 struct net_device* dev_get_by_index (int *,scalar_t__) ;
 int dev_put (struct net_device*) ;
 int init_net ;
 int proc_create_data (int ,int,scalar_t__,int *,struct sock*) ;
 scalar_t__ proc_dir ;
 int sock_i_ino (struct sock*) ;
 int sprintf (int ,char*,int ) ;

__attribute__((used)) static int bcm_connect(struct socket *sock, struct sockaddr *uaddr, int len,
         int flags)
{
 struct sockaddr_can *addr = (struct sockaddr_can *)uaddr;
 struct sock *sk = sock->sk;
 struct bcm_sock *bo = bcm_sk(sk);

 if (bo->bound)
  return -EISCONN;


 if (addr->can_ifindex) {
  struct net_device *dev;

  dev = dev_get_by_index(&init_net, addr->can_ifindex);
  if (!dev)
   return -ENODEV;

  if (dev->type != ARPHRD_CAN) {
   dev_put(dev);
   return -ENODEV;
  }

  bo->ifindex = dev->ifindex;
  dev_put(dev);

 } else {

  bo->ifindex = 0;
 }

 bo->bound = 1;

 if (proc_dir) {

  sprintf(bo->procname, "%lu", sock_i_ino(sk));
  bo->bcm_proc_read = proc_create_data(bo->procname, 0644,
           proc_dir,
           &bcm_proc_fops, sk);
 }

 return 0;
}
