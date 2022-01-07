
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ s_node; int s_net; } ;
struct sockaddr_at {TYPE_2__ sat_addr; } ;
struct net_device_ops {int (* ndo_do_ioctl ) (TYPE_3__*,struct ifreq*,int ) ;} ;
struct ifreq {int ifr_addr; } ;
struct TYPE_5__ {scalar_t__ s_node; scalar_t__ s_net; } ;
struct atalk_iface {TYPE_1__ address; int status; TYPE_3__* dev; } ;
struct TYPE_7__ {struct net_device_ops* netdev_ops; } ;


 int ATIF_PROBE_FAIL ;
 int SIOCGIFADDR ;
 int SIOCSIFADDR ;
 scalar_t__ htons (int ) ;
 int ntohs (scalar_t__) ;
 int stub1 (TYPE_3__*,struct ifreq*,int ) ;
 int stub2 (TYPE_3__*,struct ifreq*,int ) ;

__attribute__((used)) static void aarp_send_probe_phase1(struct atalk_iface *iface)
{
 struct ifreq atreq;
 struct sockaddr_at *sa = (struct sockaddr_at *)&atreq.ifr_addr;
 const struct net_device_ops *ops = iface->dev->netdev_ops;

 sa->sat_addr.s_node = iface->address.s_node;
 sa->sat_addr.s_net = ntohs(iface->address.s_net);


 if (!(ops->ndo_do_ioctl(iface->dev, &atreq, SIOCSIFADDR))) {
  ops->ndo_do_ioctl(iface->dev, &atreq, SIOCGIFADDR);
  if (iface->address.s_net != htons(sa->sat_addr.s_net) ||
      iface->address.s_node != sa->sat_addr.s_node)
   iface->status |= ATIF_PROBE_FAIL;

  iface->address.s_net = htons(sa->sat_addr.s_net);
  iface->address.s_node = sa->sat_addr.s_node;
 }
}
