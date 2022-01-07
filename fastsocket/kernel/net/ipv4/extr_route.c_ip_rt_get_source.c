
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_5__ {int dev; } ;
struct TYPE_4__ {TYPE_2__ dst; } ;
struct TYPE_6__ {scalar_t__ iif; } ;
struct rtable {int rt_gateway; TYPE_1__ u; TYPE_3__ fl; int rt_src; } ;
struct fib_result {int dummy; } ;
typedef int __be32 ;


 int FIB_RES_PREFSRC (struct fib_result) ;
 int RT_SCOPE_UNIVERSE ;
 int dev_net (int ) ;
 scalar_t__ fib_lookup (int ,TYPE_3__*,struct fib_result*) ;
 int fib_res_put (struct fib_result*) ;
 int inet_select_addr (int ,int ,int ) ;
 int memcpy (int *,int *,int) ;

void ip_rt_get_source(u8 *addr, struct rtable *rt)
{
 __be32 src;
 struct fib_result res;

 if (rt->fl.iif == 0)
  src = rt->rt_src;
 else if (fib_lookup(dev_net(rt->u.dst.dev), &rt->fl, &res) == 0) {
  src = FIB_RES_PREFSRC(res);
  fib_res_put(&res);
 } else
  src = inet_select_addr(rt->u.dst.dev, rt->rt_gateway,
     RT_SCOPE_UNIVERSE);
 memcpy(addr, &src, 4);
}
