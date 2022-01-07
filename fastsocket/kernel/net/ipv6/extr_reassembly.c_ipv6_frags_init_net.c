
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int high_thresh; int low_thresh; int timeout; } ;
struct TYPE_3__ {TYPE_2__ frags; } ;
struct net {TYPE_1__ ipv6; } ;


 int IPV6_FRAG_TIMEOUT ;
 int inet_frags_init_net (TYPE_2__*) ;
 int ip6_frags_ns_sysctl_register (struct net*) ;

__attribute__((used)) static int ipv6_frags_init_net(struct net *net)
{
 net->ipv6.frags.high_thresh = 256 * 1024;
 net->ipv6.frags.low_thresh = 192 * 1024;
 net->ipv6.frags.timeout = IPV6_FRAG_TIMEOUT;

 inet_frags_init_net(&net->ipv6.frags);

 return ip6_frags_ns_sysctl_register(net);
}
