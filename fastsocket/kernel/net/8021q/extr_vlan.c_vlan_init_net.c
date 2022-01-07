
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vlan_net {int name_type; } ;
struct net {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int VLAN_NAME_TYPE_RAW_PLUS_VID_NO_PAD ;
 int kfree (struct vlan_net*) ;
 struct vlan_net* kzalloc (int,int ) ;
 int net_assign_generic (struct net*,int ,struct vlan_net*) ;
 int vlan_net_id ;
 int vlan_proc_init (struct net*) ;

__attribute__((used)) static int vlan_init_net(struct net *net)
{
 int err;
 struct vlan_net *vn;

 err = -ENOMEM;
 vn = kzalloc(sizeof(struct vlan_net), GFP_KERNEL);
 if (vn == ((void*)0))
  goto err_alloc;

 err = net_assign_generic(net, vlan_net_id, vn);
 if (err < 0)
  goto err_assign;

 vn->name_type = VLAN_NAME_TYPE_RAW_PLUS_VID_NO_PAD;

 err = vlan_proc_init(net);
 if (err < 0)
  goto err_proc;

 return 0;

err_proc:

err_assign:
 kfree(vn);
err_alloc:
 return err;
}
