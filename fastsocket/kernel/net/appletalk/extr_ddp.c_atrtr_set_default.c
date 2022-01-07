
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct TYPE_3__ {scalar_t__ s_node; int s_net; } ;
struct TYPE_4__ {TYPE_1__ gateway; int flags; struct net_device* dev; } ;


 int RTF_UP ;
 TYPE_2__ atrtr_default ;
 int htons (int ) ;

__attribute__((used)) static void atrtr_set_default(struct net_device *dev)
{
 atrtr_default.dev = dev;
 atrtr_default.flags = RTF_UP;
 atrtr_default.gateway.s_net = htons(0);
 atrtr_default.gateway.s_node = 0;
}
