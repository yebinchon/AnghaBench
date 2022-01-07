
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int VLAN_GRP_HASH_MASK ;
 unsigned int VLAN_GRP_HASH_SHIFT ;

__attribute__((used)) static inline unsigned int vlan_grp_hashfn(unsigned int idx)
{
 return ((idx >> VLAN_GRP_HASH_SHIFT) ^ idx) & VLAN_GRP_HASH_MASK;
}
