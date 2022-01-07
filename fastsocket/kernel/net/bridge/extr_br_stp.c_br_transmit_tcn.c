
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_bridge {int root_port; } ;


 int br_get_port (struct net_bridge*,int ) ;
 int br_send_tcn_bpdu (int ) ;

void br_transmit_tcn(struct net_bridge *br)
{
 br_send_tcn_bpdu(br_get_port(br, br->root_port));
}
