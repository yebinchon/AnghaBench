
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int proc_net_devsnmp6; } ;
struct net {TYPE_1__ mib; } ;
struct TYPE_6__ {TYPE_2__* proc_dir_entry; } ;
struct inet6_dev {TYPE_3__ stats; int dev; } ;
struct TYPE_5__ {int name; } ;


 int EINVAL ;
 int ENOENT ;
 struct net* dev_net (int ) ;
 int remove_proc_entry (int ,int ) ;

int snmp6_unregister_dev(struct inet6_dev *idev)
{
 struct net *net = dev_net(idev->dev);
 if (!net->mib.proc_net_devsnmp6)
  return -ENOENT;
 if (!idev || !idev->stats.proc_dir_entry)
  return -EINVAL;
 remove_proc_entry(idev->stats.proc_dir_entry->name,
     net->mib.proc_net_devsnmp6);
 idev->stats.proc_dir_entry = ((void*)0);
 return 0;
}
