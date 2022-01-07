
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int rt_genid; } ;
struct net {TYPE_1__ ipv4; } ;


 int atomic_read (int *) ;

__attribute__((used)) static inline int rt_genid(struct net *net)
{
 return atomic_read(&net->ipv4.rt_genid);
}
