
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_client {int dummy; } ;


 int FMODE_READ ;
 int FMODE_WRITE ;
 int nfs_client_mark_return_all_delegation_types (struct nfs_client*,int) ;

__attribute__((used)) static void nfs_client_mark_return_all_delegations(struct nfs_client *clp)
{
 nfs_client_mark_return_all_delegation_types(clp, FMODE_READ|FMODE_WRITE);
}
