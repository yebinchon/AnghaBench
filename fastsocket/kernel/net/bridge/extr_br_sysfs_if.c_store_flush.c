
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_bridge_port {int br; } ;
typedef int ssize_t ;


 int br_fdb_delete_by_port (int ,struct net_bridge_port*,int ) ;

__attribute__((used)) static ssize_t store_flush(struct net_bridge_port *p, unsigned long v)
{
 br_fdb_delete_by_port(p->br, p, 0);
 return 0;
}
