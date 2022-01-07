
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtnl_link_ops {int dummy; } ;
struct net {int dummy; } ;
struct ip_tunnel_parm {int name; } ;
struct ip_tunnel_net {int * fb_tunnel_dev; int tunnels; } ;
struct hlist_head {int dummy; } ;
typedef int parms ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int IFNAMSIZ ;
 int IP_TNL_HASH_SIZE ;
 scalar_t__ IS_ERR (int *) ;
 int PTR_ERR (int *) ;
 int * __ip_tunnel_create (struct net*,struct rtnl_link_ops*,struct ip_tunnel_parm*) ;
 int kfree (int ) ;
 int kzalloc (int,int ) ;
 int memset (struct ip_tunnel_parm*,int ,int) ;
 struct ip_tunnel_net* net_generic (struct net*,int) ;
 int rtnl_lock () ;
 int rtnl_unlock () ;
 int strlcpy (int ,char*,int ) ;

int ip_tunnel_init_net(struct net *net, int ip_tnl_net_id,
      struct rtnl_link_ops *ops, char *devname)
{
 struct ip_tunnel_net *itn = net_generic(net, ip_tnl_net_id);
 struct ip_tunnel_parm parms;

 itn->tunnels = kzalloc(IP_TNL_HASH_SIZE * sizeof(struct hlist_head), GFP_KERNEL);
 if (!itn->tunnels)
  return -ENOMEM;

 if (!ops) {
  itn->fb_tunnel_dev = ((void*)0);
  return 0;
 }
 memset(&parms, 0, sizeof(parms));
 if (devname)
  strlcpy(parms.name, devname, IFNAMSIZ);

 rtnl_lock();
 itn->fb_tunnel_dev = __ip_tunnel_create(net, ops, &parms);
 rtnl_unlock();
 if (IS_ERR(itn->fb_tunnel_dev)) {
  kfree(itn->tunnels);
  return PTR_ERR(itn->fb_tunnel_dev);
 }

 return 0;
}
