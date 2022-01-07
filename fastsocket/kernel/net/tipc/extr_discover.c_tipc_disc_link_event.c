
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 scalar_t__ in_own_cluster (int ) ;

void tipc_disc_link_event(u32 addr, char *name, int up)
{
 if (in_own_cluster(addr))
  return;



}
