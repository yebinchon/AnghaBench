
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ipv6hdr {int* flow_lbl; } ;



__attribute__((used)) static void set_ipv6_fl(struct ipv6hdr *nh, u32 fl)
{
 nh->flow_lbl[0] = (nh->flow_lbl[0] & 0xF0) | (fl & 0x000F0000) >> 16;
 nh->flow_lbl[1] = (fl & 0x0000FF00) >> 8;
 nh->flow_lbl[2] = fl & 0x000000FF;
}
