
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;


 int SEL_NETPORT_HASH_SIZE ;

__attribute__((used)) static unsigned int sel_netport_hashfn(u16 pnum)
{
 return (pnum & (SEL_NETPORT_HASH_SIZE - 1));
}
