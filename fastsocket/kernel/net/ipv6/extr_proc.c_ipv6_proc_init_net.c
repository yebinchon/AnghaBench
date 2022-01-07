
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int proc_net_devsnmp6; } ;
struct net {TYPE_1__ mib; int proc_net; } ;


 int ENOMEM ;
 int S_IRUGO ;
 int proc_mkdir (char*,int ) ;
 int proc_net_fops_create (struct net*,char*,int ,int *) ;
 int proc_net_remove (struct net*,char*) ;
 int snmp6_seq_fops ;
 int sockstat6_seq_fops ;

__attribute__((used)) static int ipv6_proc_init_net(struct net *net)
{
 if (!proc_net_fops_create(net, "sockstat6", S_IRUGO,
   &sockstat6_seq_fops))
  return -ENOMEM;

 if (!proc_net_fops_create(net, "snmp6", S_IRUGO, &snmp6_seq_fops))
  goto proc_snmp6_fail;

 net->mib.proc_net_devsnmp6 = proc_mkdir("dev_snmp6", net->proc_net);
 if (!net->mib.proc_net_devsnmp6)
  goto proc_dev_snmp6_fail;
 return 0;

proc_snmp6_fail:
 proc_net_remove(net, "sockstat6");
proc_dev_snmp6_fail:
 proc_net_remove(net, "dev_snmp6");
 return -ENOMEM;
}
