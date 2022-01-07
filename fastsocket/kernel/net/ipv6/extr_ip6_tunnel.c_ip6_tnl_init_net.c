
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net {int dummy; } ;
struct ip6_tnl_net {int fb_tnl_dev; int tnls_r_l; int * tnls; int tnls_wc; } ;
struct ip6_tnl {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int alloc_netdev (int,char*,int ) ;
 int dev_net_set (int ,struct net*) ;
 int free_netdev (int ) ;
 int ip6_fb_tnl_dev_init (int ) ;
 int ip6_tnl_dev_setup ;
 int ip6_tnl_net_id ;
 int kfree (struct ip6_tnl_net*) ;
 struct ip6_tnl_net* kzalloc (int,int ) ;
 int net_assign_generic (struct net*,int ,struct ip6_tnl_net*) ;
 int register_netdev (int ) ;

__attribute__((used)) static int ip6_tnl_init_net(struct net *net)
{
 int err;
 struct ip6_tnl_net *ip6n;

 err = -ENOMEM;
 ip6n = kzalloc(sizeof(struct ip6_tnl_net), GFP_KERNEL);
 if (ip6n == ((void*)0))
  goto err_alloc;

 err = net_assign_generic(net, ip6_tnl_net_id, ip6n);
 if (err < 0)
  goto err_assign;

 ip6n->tnls[0] = ip6n->tnls_wc;
 ip6n->tnls[1] = ip6n->tnls_r_l;

 err = -ENOMEM;
 ip6n->fb_tnl_dev = alloc_netdev(sizeof(struct ip6_tnl), "ip6tnl0",
          ip6_tnl_dev_setup);

 if (!ip6n->fb_tnl_dev)
  goto err_alloc_dev;
 dev_net_set(ip6n->fb_tnl_dev, net);

 ip6_fb_tnl_dev_init(ip6n->fb_tnl_dev);

 err = register_netdev(ip6n->fb_tnl_dev);
 if (err < 0)
  goto err_register;
 return 0;

err_register:
 free_netdev(ip6n->fb_tnl_dev);
err_alloc_dev:

err_assign:
 kfree(ip6n);
err_alloc:
 return err;
}
