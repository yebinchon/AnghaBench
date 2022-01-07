
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int tipc_own_addr ;

__attribute__((used)) static inline int in_own_cluster(u32 addr)
{
 return !((addr ^ tipc_own_addr) >> 12);
}
