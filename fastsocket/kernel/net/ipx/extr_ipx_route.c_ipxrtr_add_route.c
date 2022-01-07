
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipx_route {int ir_routed; int ir_router_node; struct ipx_interface* ir_intrfc; int ir_net; int node; int refcnt; } ;
struct ipx_interface {int dummy; } ;
typedef int __be32 ;


 int EAGAIN ;
 int EEXIST ;
 int GFP_ATOMIC ;
 int IPX_NODE_LEN ;
 int atomic_set (int *,int) ;
 struct ipx_interface* ipx_internal_net ;
 int ipx_routes ;
 int ipx_routes_lock ;
 int ipxrtr_hold (struct ipx_route*) ;
 struct ipx_route* ipxrtr_lookup (int ) ;
 int ipxrtr_put (struct ipx_route*) ;
 struct ipx_route* kmalloc (int,int ) ;
 int list_add (int *,int *) ;
 int memcpy (int ,unsigned char*,int ) ;
 int memset (int ,char,int ) ;
 int write_lock_bh (int *) ;
 int write_unlock_bh (int *) ;

int ipxrtr_add_route(__be32 network, struct ipx_interface *intrfc,
       unsigned char *node)
{
 struct ipx_route *rt;
 int rc;


 rt = ipxrtr_lookup(network);
 if (!rt) {
  rt = kmalloc(sizeof(*rt), GFP_ATOMIC);
  rc = -EAGAIN;
  if (!rt)
   goto out;

  atomic_set(&rt->refcnt, 1);
  ipxrtr_hold(rt);
  write_lock_bh(&ipx_routes_lock);
  list_add(&rt->node, &ipx_routes);
  write_unlock_bh(&ipx_routes_lock);
 } else {
  rc = -EEXIST;
  if (intrfc == ipx_internal_net)
   goto out_put;
 }

 rt->ir_net = network;
 rt->ir_intrfc = intrfc;
 if (!node) {
  memset(rt->ir_router_node, '\0', IPX_NODE_LEN);
  rt->ir_routed = 0;
 } else {
  memcpy(rt->ir_router_node, node, IPX_NODE_LEN);
  rt->ir_routed = 1;
 }

 rc = 0;
out_put:
 ipxrtr_put(rt);
out:
 return rc;
}
