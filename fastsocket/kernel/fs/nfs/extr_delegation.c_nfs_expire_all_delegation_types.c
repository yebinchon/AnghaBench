
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_client {int dummy; } ;
typedef int fmode_t ;


 int nfs_client_mark_return_all_delegation_types (struct nfs_client*,int ) ;
 int nfs_delegation_run_state_manager (struct nfs_client*) ;

void nfs_expire_all_delegation_types(struct nfs_client *clp, fmode_t flags)
{
 nfs_client_mark_return_all_delegation_types(clp, flags);
 nfs_delegation_run_state_manager(clp);
}
