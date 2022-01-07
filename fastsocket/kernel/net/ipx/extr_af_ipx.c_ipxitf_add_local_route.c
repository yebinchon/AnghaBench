
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipx_interface {int if_netnum; } ;


 int ipxrtr_add_route (int ,struct ipx_interface*,int *) ;

__attribute__((used)) static int ipxitf_add_local_route(struct ipx_interface *intrfc)
{
 return ipxrtr_add_route(intrfc->if_netnum, intrfc, ((void*)0));
}
