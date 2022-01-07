
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int SEL_NETIF_HASH_SIZE ;

__attribute__((used)) static inline u32 sel_netif_hashfn(int ifindex)
{
 return (ifindex & (SEL_NETIF_HASH_SIZE - 1));
}
