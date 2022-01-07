
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipx_route_definition {int ipx_router_node; int ipx_network; int ipx_router_network; } ;
struct ipx_interface {int dummy; } ;


 int ENETUNREACH ;
 struct ipx_interface* ipxitf_find_using_net (int ) ;
 int ipxitf_put (struct ipx_interface*) ;
 int ipxrtr_add_route (int ,struct ipx_interface*,int ) ;

__attribute__((used)) static int ipxrtr_create(struct ipx_route_definition *rd)
{
 struct ipx_interface *intrfc;
 int rc = -ENETUNREACH;


 intrfc = ipxitf_find_using_net(rd->ipx_router_network);
 if (!intrfc)
  goto out;
 rc = ipxrtr_add_route(rd->ipx_network, intrfc, rd->ipx_router_node);
 ipxitf_put(intrfc);
out:
 return rc;
}
