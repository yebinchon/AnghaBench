
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int16_t ;
struct net_device {int dummy; } ;
struct net {int dummy; } ;
typedef int __be32 ;


 int inet_dev_addr_type (struct net*,struct net_device const*,int ) ;

__attribute__((used)) static inline bool match_type(struct net *net, const struct net_device *dev,
         __be32 addr, u_int16_t mask)
{
 return !!(mask & (1 << inet_dev_addr_type(net, dev, addr)));
}
