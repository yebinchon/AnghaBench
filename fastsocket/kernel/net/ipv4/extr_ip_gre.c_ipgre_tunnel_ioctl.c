
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct TYPE_3__ {int version; scalar_t__ protocol; int ihl; int frag_off; } ;
struct ip_tunnel_parm {int i_flags; int o_flags; TYPE_1__ iph; } ;
struct TYPE_4__ {int ifru_data; } ;
struct ifreq {TYPE_2__ ifr_ifru; } ;
typedef int p ;


 int EFAULT ;
 int EINVAL ;
 int GRE_ROUTING ;
 int GRE_VERSION ;
 scalar_t__ IPPROTO_GRE ;
 int IP_DF ;
 int SIOCADDTUNNEL ;
 int SIOCCHGTUNNEL ;
 scalar_t__ copy_from_user (struct ip_tunnel_parm*,int ,int) ;
 scalar_t__ copy_to_user (int ,struct ip_tunnel_parm*,int) ;
 void* gre_flags_to_tnl_flags (int) ;
 int htons (int ) ;
 int ip_tunnel_ioctl (struct net_device*,struct ip_tunnel_parm*,int) ;
 void* tnl_flags_to_gre_flags (int) ;

__attribute__((used)) static int ipgre_tunnel_ioctl(struct net_device *dev,
         struct ifreq *ifr, int cmd)
{
 int err = 0;
 struct ip_tunnel_parm p;

 if (copy_from_user(&p, ifr->ifr_ifru.ifru_data, sizeof(p)))
  return -EFAULT;
 if (cmd == SIOCADDTUNNEL || cmd == SIOCCHGTUNNEL) {
  if (p.iph.version != 4 || p.iph.protocol != IPPROTO_GRE ||
      p.iph.ihl != 5 || (p.iph.frag_off&htons(~IP_DF)) ||
      ((p.i_flags|p.o_flags)&(GRE_VERSION|GRE_ROUTING)))
   return -EINVAL;
 }
 p.i_flags = gre_flags_to_tnl_flags(p.i_flags);
 p.o_flags = gre_flags_to_tnl_flags(p.o_flags);

 err = ip_tunnel_ioctl(dev, &p, cmd);
 if (err)
  return err;

 p.i_flags = tnl_flags_to_gre_flags(p.i_flags);
 p.o_flags = tnl_flags_to_gre_flags(p.o_flags);

 if (copy_to_user(ifr->ifr_ifru.ifru_data, &p, sizeof(p)))
  return -EFAULT;
 return 0;
}
