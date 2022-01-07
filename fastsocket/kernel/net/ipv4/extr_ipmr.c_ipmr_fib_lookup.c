
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct mr_table* mrt; } ;
struct net {TYPE_1__ ipv4; } ;
struct mr_table {int dummy; } ;
struct flowi {int dummy; } ;



__attribute__((used)) static int ipmr_fib_lookup(struct net *net, struct flowi *flp,
      struct mr_table **mrt)
{
 *mrt = net->ipv4.mrt;
 return 0;
}
