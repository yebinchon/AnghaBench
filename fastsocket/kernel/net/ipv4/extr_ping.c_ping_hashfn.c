
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net {int dummy; } ;


 unsigned int net_hash_mix (struct net*) ;
 int pr_debug (char*,unsigned int,int) ;

__attribute__((used)) static inline int ping_hashfn(struct net *net, unsigned num, unsigned mask)
{
 int res = (num + net_hash_mix(net)) & mask;
 pr_debug("hash(%d) = %d\n", num, res);
 return res;
}
