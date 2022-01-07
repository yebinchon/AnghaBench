
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sit_net {int fb_tunnel_dev; int tunnels_r_l; int * tunnels; int tunnels_r; int tunnels_l; int tunnels_wc; } ;
struct net {int dummy; } ;
struct ip_tunnel {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int alloc_netdev (int,char*,int ) ;
 int dev_net_set (int ,struct net*) ;
 int dev_put (int ) ;
 int free_netdev (int ) ;
 int ipip6_fb_tunnel_init (int ) ;
 int ipip6_tunnel_setup ;
 int kfree (struct sit_net*) ;
 struct sit_net* kzalloc (int,int ) ;
 int net_assign_generic (struct net*,int ,struct sit_net*) ;
 int register_netdev (int ) ;
 int sit_net_id ;

__attribute__((used)) static int sit_init_net(struct net *net)
{
 int err;
 struct sit_net *sitn;

 err = -ENOMEM;
 sitn = kzalloc(sizeof(struct sit_net), GFP_KERNEL);
 if (sitn == ((void*)0))
  goto err_alloc;

 err = net_assign_generic(net, sit_net_id, sitn);
 if (err < 0)
  goto err_assign;

 sitn->tunnels[0] = sitn->tunnels_wc;
 sitn->tunnels[1] = sitn->tunnels_l;
 sitn->tunnels[2] = sitn->tunnels_r;
 sitn->tunnels[3] = sitn->tunnels_r_l;

 sitn->fb_tunnel_dev = alloc_netdev(sizeof(struct ip_tunnel), "sit0",
        ipip6_tunnel_setup);
 if (!sitn->fb_tunnel_dev) {
  err = -ENOMEM;
  goto err_alloc_dev;
 }
 dev_net_set(sitn->fb_tunnel_dev, net);

 ipip6_fb_tunnel_init(sitn->fb_tunnel_dev);

 if ((err = register_netdev(sitn->fb_tunnel_dev)))
  goto err_reg_dev;

 return 0;

err_reg_dev:
 dev_put(sitn->fb_tunnel_dev);
 free_netdev(sitn->fb_tunnel_dev);
err_alloc_dev:

err_assign:
 kfree(sitn);
err_alloc:
 return err;
}
