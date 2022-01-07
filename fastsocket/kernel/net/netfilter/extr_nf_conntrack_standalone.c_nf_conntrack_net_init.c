
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int sysctl_checksum; scalar_t__ sysctl_log_invalid; } ;
struct net {TYPE_1__ ct; } ;


 int nf_conntrack_cleanup (struct net*) ;
 int nf_conntrack_init (struct net*) ;
 int nf_conntrack_standalone_fini_proc (struct net*) ;
 int nf_conntrack_standalone_init_proc (struct net*) ;
 int nf_conntrack_standalone_init_sysctl (struct net*) ;

__attribute__((used)) static int nf_conntrack_net_init(struct net *net)
{
 int ret;

 ret = nf_conntrack_init(net);
 if (ret < 0)
  goto out_init;
 ret = nf_conntrack_standalone_init_proc(net);
 if (ret < 0)
  goto out_proc;
 net->ct.sysctl_checksum = 1;
 net->ct.sysctl_log_invalid = 0;
 ret = nf_conntrack_standalone_init_sysctl(net);
 if (ret < 0)
  goto out_sysctl;
 return 0;

out_sysctl:
 nf_conntrack_standalone_fini_proc(net);
out_proc:
 nf_conntrack_cleanup(net);
out_init:
 return ret;
}
