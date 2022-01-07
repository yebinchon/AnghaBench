
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net {int * ipv4_sysctl_ping_group_range; } ;
typedef int gid_t ;
struct TYPE_2__ {int lock; } ;


 unsigned int read_seqbegin (int *) ;
 scalar_t__ read_seqretry (int *,unsigned int) ;
 TYPE_1__ sysctl_local_ports ;

__attribute__((used)) static void inet_get_ping_group_range_net(struct net *net, gid_t *low,
       gid_t *high)
{
 gid_t *data = net->ipv4_sysctl_ping_group_range;
 unsigned seq;
 do {
  seq = read_seqbegin(&sysctl_local_ports.lock);

  *low = data[0];
  *high = data[1];
 } while (read_seqretry(&sysctl_local_ports.lock, seq));
}
