
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_client {int dummy; } ;


 int nfs_client_mark_return_all_delegations (struct nfs_client*) ;

void nfs_handle_cb_pathdown(struct nfs_client *clp)
{
 if (clp == ((void*)0))
  return;
 nfs_client_mark_return_all_delegations(clp);
}
