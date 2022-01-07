
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_client {int dummy; } ;


 int FMODE_READ ;
 int FMODE_WRITE ;
 int nfs_expire_all_delegation_types (struct nfs_client*,int) ;

void nfs_expire_all_delegations(struct nfs_client *clp)
{
 nfs_expire_all_delegation_types(clp, FMODE_READ|FMODE_WRITE);
}
