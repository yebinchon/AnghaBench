
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int high_thresh; int low_thresh; int timeout; } ;
struct TYPE_3__ {TYPE_2__ frags; } ;
struct net {TYPE_1__ ipv4; } ;


 int IP_FRAG_TIME ;
 int inet_frags_init_net (TYPE_2__*) ;
 int ip4_frags_ns_ctl_register (struct net*) ;

__attribute__((used)) static int ipv4_frags_init_net(struct net *net)
{






 net->ipv4.frags.high_thresh = 256 * 1024;
 net->ipv4.frags.low_thresh = 192 * 1024;





 net->ipv4.frags.timeout = IP_FRAG_TIME;

 inet_frags_init_net(&net->ipv4.frags);

 return ip4_frags_ns_ctl_register(net);
}
