
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipx_interface_definition {int ipx_node; int ipx_network; } ;
struct ipx_interface {int if_node; } ;


 int EADDRINUSE ;
 int EADDRNOTAVAIL ;
 int EAGAIN ;
 int EEXIST ;
 int IPX_NODE_LEN ;
 struct ipx_interface* ipx_internal_net ;
 struct ipx_interface* ipx_primary_net ;
 int ipxitf_add_local_route (struct ipx_interface*) ;
 struct ipx_interface* ipxitf_alloc (int *,int ,int ,int *,int,int ) ;
 struct ipx_interface* ipxitf_find_using_net (int ) ;
 int ipxitf_hold (struct ipx_interface*) ;
 int ipxitf_insert (struct ipx_interface*) ;
 int ipxitf_put (struct ipx_interface*) ;
 int memcpy (char*,int ,int ) ;

__attribute__((used)) static int ipxitf_create_internal(struct ipx_interface_definition *idef)
{
 struct ipx_interface *intrfc;
 int rc = -EEXIST;


 if (ipx_primary_net)
  goto out;


 rc = -EADDRNOTAVAIL;
 if (!idef->ipx_network)
  goto out;
 intrfc = ipxitf_find_using_net(idef->ipx_network);
 rc = -EADDRINUSE;
 if (intrfc) {
  ipxitf_put(intrfc);
  goto out;
 }
 intrfc = ipxitf_alloc(((void*)0), idef->ipx_network, 0, ((void*)0), 1, 0);
 rc = -EAGAIN;
 if (!intrfc)
  goto out;
 memcpy((char *)&(intrfc->if_node), idef->ipx_node, IPX_NODE_LEN);
 ipx_internal_net = ipx_primary_net = intrfc;
 ipxitf_hold(intrfc);
 ipxitf_insert(intrfc);

 rc = ipxitf_add_local_route(intrfc);
 ipxitf_put(intrfc);
out:
 return rc;
}
