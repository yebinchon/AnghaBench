
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct hlist_head {int dummy; } ;
struct datapath {struct hlist_head* ports; } ;


 int DP_VPORT_HASH_BUCKETS ;

__attribute__((used)) static struct hlist_head *vport_hash_bucket(const struct datapath *dp,
         u16 port_no)
{
 return &dp->ports[port_no & (DP_VPORT_HASH_BUCKETS - 1)];
}
