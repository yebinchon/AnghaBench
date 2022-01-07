
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_bridge_port {scalar_t__ designated_port; scalar_t__ port_id; TYPE_1__* br; int designated_bridge; } ;
struct TYPE_2__ {int bridge_id; } ;


 int memcmp (int *,int *,int) ;

__attribute__((used)) static inline int br_is_designated_port(const struct net_bridge_port *p)
{
 return !memcmp(&p->designated_bridge, &p->br->bridge_id, 8) &&
  (p->designated_port == p->port_id);
}
