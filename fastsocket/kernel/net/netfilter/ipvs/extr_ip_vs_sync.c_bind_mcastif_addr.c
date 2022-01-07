
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct socket {TYPE_2__* ops; } ;
struct TYPE_3__ {scalar_t__ s_addr; } ;
struct sockaddr_in {scalar_t__ sin_port; TYPE_1__ sin_addr; int sin_family; } ;
struct sockaddr {int dummy; } ;
struct net_device {int dummy; } ;
typedef int sin ;
typedef scalar_t__ __be32 ;
struct TYPE_4__ {int (* bind ) (struct socket*,struct sockaddr*,int) ;} ;


 int AF_INET ;
 int ENODEV ;
 int IP_VS_DBG (int,char*,char*,scalar_t__*) ;
 int RT_SCOPE_UNIVERSE ;
 struct net_device* __dev_get_by_name (int *,char*) ;
 scalar_t__ inet_select_addr (struct net_device*,int ,int ) ;
 int init_net ;
 int pr_err (char*) ;
 int stub1 (struct socket*,struct sockaddr*,int) ;

__attribute__((used)) static int bind_mcastif_addr(struct socket *sock, char *ifname)
{
 struct net_device *dev;
 __be32 addr;
 struct sockaddr_in sin;

 if ((dev = __dev_get_by_name(&init_net, ifname)) == ((void*)0))
  return -ENODEV;

 addr = inet_select_addr(dev, 0, RT_SCOPE_UNIVERSE);
 if (!addr)
  pr_err("You probably need to specify IP address on "
         "multicast interface.\n");

 IP_VS_DBG(7, "binding socket with (%s) %pI4\n",
    ifname, &addr);


 sin.sin_family = AF_INET;
 sin.sin_addr.s_addr = addr;
 sin.sin_port = 0;

 return sock->ops->bind(sock, (struct sockaddr*)&sin, sizeof(sin));
}
