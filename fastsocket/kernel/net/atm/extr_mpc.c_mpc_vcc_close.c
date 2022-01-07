
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct net_device {int name; } ;
struct mpoa_client {TYPE_4__* eg_ops; TYPE_3__* dev; TYPE_2__* in_ops; } ;
struct atm_vcc {int dummy; } ;
struct TYPE_11__ {int in_dst_ip; } ;
struct TYPE_15__ {int * shortcut; TYPE_1__ ctrl_info; } ;
typedef TYPE_5__ in_cache_entry ;
struct TYPE_16__ {int * shortcut; } ;
typedef TYPE_6__ eg_cache_entry ;
struct TYPE_14__ {int (* put ) (TYPE_6__*) ;TYPE_6__* (* get_by_vcc ) (struct atm_vcc*,struct mpoa_client*) ;} ;
struct TYPE_13__ {int name; } ;
struct TYPE_12__ {int (* put ) (TYPE_5__*) ;TYPE_5__* (* get_by_vcc ) (struct atm_vcc*,struct mpoa_client*) ;} ;


 int dprintk (char*,int ,...) ;
 struct mpoa_client* find_mpc_by_lec (struct net_device*) ;
 int printk (char*,int ) ;
 TYPE_5__* stub1 (struct atm_vcc*,struct mpoa_client*) ;
 int stub2 (TYPE_5__*) ;
 TYPE_6__* stub3 (struct atm_vcc*,struct mpoa_client*) ;
 int stub4 (TYPE_6__*) ;

__attribute__((used)) static void mpc_vcc_close(struct atm_vcc *vcc, struct net_device *dev)
{
 struct mpoa_client *mpc;
 in_cache_entry *in_entry;
 eg_cache_entry *eg_entry;

 mpc = find_mpc_by_lec(dev);
 if (mpc == ((void*)0)) {
  printk("mpoa: (%s) mpc_vcc_close: close for unknown MPC\n", dev->name);
  return;
 }

 dprintk("mpoa: (%s) mpc_vcc_close:\n", dev->name);
 in_entry = mpc->in_ops->get_by_vcc(vcc, mpc);
 if (in_entry) {
  dprintk("mpoa: (%s) mpc_vcc_close: ingress SVC closed ip = %pI4\n",
         mpc->dev->name, &in_entry->ctrl_info.in_dst_ip);
  in_entry->shortcut = ((void*)0);
  mpc->in_ops->put(in_entry);
 }
 eg_entry = mpc->eg_ops->get_by_vcc(vcc, mpc);
 if (eg_entry) {
  dprintk("mpoa: (%s) mpc_vcc_close: egress SVC closed\n", mpc->dev->name);
  eg_entry->shortcut = ((void*)0);
  mpc->eg_ops->put(eg_entry);
 }

 if (in_entry == ((void*)0) && eg_entry == ((void*)0))
  dprintk("mpoa: (%s) mpc_vcc_close:  unused vcc closed\n", dev->name);

 return;
}
