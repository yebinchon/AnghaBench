
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ipv6hdr {int priority; int* flow_lbl; } ;



__attribute__((used)) static void set_ipv6_tc(struct ipv6hdr *nh, u8 tc)
{
 nh->priority = tc >> 4;
 nh->flow_lbl[0] = (nh->flow_lbl[0] & 0x0F) | ((tc & 0x0F) << 4);
}
