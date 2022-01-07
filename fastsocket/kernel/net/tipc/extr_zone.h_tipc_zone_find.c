
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct _zone {int dummy; } ;
struct TYPE_2__ {struct _zone** zones; } ;


 TYPE_1__ tipc_net ;
 size_t tipc_zone (int ) ;

__attribute__((used)) static inline struct _zone *tipc_zone_find(u32 addr)
{
 return tipc_net.zones[tipc_zone(addr)];
}
