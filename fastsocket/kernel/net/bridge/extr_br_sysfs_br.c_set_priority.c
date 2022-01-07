
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct net_bridge {int dummy; } ;


 int br_stp_set_bridge_priority (struct net_bridge*,int ) ;

__attribute__((used)) static int set_priority(struct net_bridge *br, unsigned long val)
{
 br_stp_set_bridge_priority(br, (u16) val);
 return 0;
}
