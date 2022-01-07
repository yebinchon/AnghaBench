
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int dev; } ;
struct TYPE_4__ {TYPE_1__ dst; } ;
struct rtable {TYPE_2__ u; } ;


 scalar_t__ dev_net (int ) ;

__attribute__((used)) static inline int compare_netns(struct rtable *rt1, struct rtable *rt2)
{
 return dev_net(rt1->u.dst.dev) == dev_net(rt2->u.dst.dev);
}
