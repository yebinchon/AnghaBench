
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int sysctl_max_dgram_qlen; } ;
struct net {TYPE_1__ unx; } ;


 int ENOMEM ;
 int proc_net_fops_create (struct net*,char*,int ,int *) ;
 int unix_seq_fops ;
 scalar_t__ unix_sysctl_register (struct net*) ;
 int unix_sysctl_unregister (struct net*) ;

__attribute__((used)) static int unix_net_init(struct net *net)
{
 int error = -ENOMEM;

 net->unx.sysctl_max_dgram_qlen = 10;
 if (unix_sysctl_register(net))
  goto out;







 error = 0;
out:
 return error;
}
