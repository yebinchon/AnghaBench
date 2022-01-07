
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int cl_keepalive_delay_ms; } ;


 TYPE_1__* o2nm_single_cluster ;

__attribute__((used)) static inline int o2net_keepalive_delay(void)
{
 return o2nm_single_cluster->cl_keepalive_delay_ms;
}
