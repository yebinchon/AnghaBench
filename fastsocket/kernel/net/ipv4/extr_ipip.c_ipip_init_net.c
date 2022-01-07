
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net {int dummy; } ;
struct ipip_net {int fb_tunnel_dev; int tunnels_r_l; int * tunnels; int tunnels_r; int tunnels_l; int tunnels_wc; } ;
struct ip_tunnel {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int alloc_netdev (int,char*,int ) ;
 int dev_net_set (int ,struct net*) ;
 int free_netdev (int ) ;
 int ipip_fb_tunnel_init (int ) ;
 int ipip_net_id ;
 int ipip_tunnel_setup ;
 int kfree (struct ipip_net*) ;
 struct ipip_net* kzalloc (int,int ) ;
 int net_assign_generic (struct net*,int ,struct ipip_net*) ;
 int register_netdev (int ) ;

__attribute__((used)) static int ipip_init_net(struct net *net)
{
 int err;
 struct ipip_net *ipn;

 err = -ENOMEM;
 ipn = kzalloc(sizeof(struct ipip_net), GFP_KERNEL);
 if (ipn == ((void*)0))
  goto err_alloc;

 err = net_assign_generic(net, ipip_net_id, ipn);
 if (err < 0)
  goto err_assign;

 ipn->tunnels[0] = ipn->tunnels_wc;
 ipn->tunnels[1] = ipn->tunnels_l;
 ipn->tunnels[2] = ipn->tunnels_r;
 ipn->tunnels[3] = ipn->tunnels_r_l;

 ipn->fb_tunnel_dev = alloc_netdev(sizeof(struct ip_tunnel),
        "tunl0",
        ipip_tunnel_setup);
 if (!ipn->fb_tunnel_dev) {
  err = -ENOMEM;
  goto err_alloc_dev;
 }
 dev_net_set(ipn->fb_tunnel_dev, net);

 ipip_fb_tunnel_init(ipn->fb_tunnel_dev);

 if ((err = register_netdev(ipn->fb_tunnel_dev)))
  goto err_reg_dev;

 return 0;

err_reg_dev:
 free_netdev(ipn->fb_tunnel_dev);
err_alloc_dev:

err_assign:
 kfree(ipn);
err_alloc:
 return err;
}
