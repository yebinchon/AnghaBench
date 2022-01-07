
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct nlattr {int dummy; } ;
struct net_device {int dummy; } ;


 int __dcbnl_pg_getcfg (struct net_device*,struct nlattr**,int ,int ,int ,int ) ;

__attribute__((used)) static int dcbnl_pgtx_getcfg(struct net_device *netdev, struct nlattr **tb,
                             u32 pid, u32 seq, u16 flags)
{
 return __dcbnl_pg_getcfg(netdev, tb, pid, seq, flags, 0);
}
