
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int tipc_cluster (int ) ;
 int tipc_own_addr ;

__attribute__((used)) static inline u32 own_cluster(void)
{
 return tipc_cluster(tipc_own_addr);
}
