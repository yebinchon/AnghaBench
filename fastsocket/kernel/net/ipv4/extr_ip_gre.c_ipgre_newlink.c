
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nlattr {int dummy; } ;
struct net_device {int dummy; } ;
struct ip_tunnel_parm {int dummy; } ;


 int ip_tunnel_newlink (struct net_device*,struct nlattr**,struct ip_tunnel_parm*) ;
 int ipgre_netlink_parms (struct nlattr**,struct nlattr**,struct ip_tunnel_parm*) ;

__attribute__((used)) static int ipgre_newlink(struct net_device *dev,
    struct nlattr *tb[], struct nlattr *data[])
{
 struct ip_tunnel_parm p;

 ipgre_netlink_parms(data, tb, &p);
 return ip_tunnel_newlink(dev, tb, &p);
}
