
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int nqueues; } ;
struct TYPE_4__ {TYPE_1__ frags; } ;
struct net {TYPE_2__ ipv6; } ;



int ip6_frag_nqueues(struct net *net)
{
 return net->ipv6.frags.nqueues;
}
