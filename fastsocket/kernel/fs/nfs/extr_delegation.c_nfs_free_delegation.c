
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_delegation {int rcu; int * cred; } ;


 int call_rcu (int *,int ) ;
 int nfs_free_delegation_callback ;
 int put_rpccred (int *) ;

__attribute__((used)) static void nfs_free_delegation(struct nfs_delegation *delegation)
{
 if (delegation->cred) {
  put_rpccred(delegation->cred);
  delegation->cred = ((void*)0);
 }
 call_rcu(&delegation->rcu, nfs_free_delegation_callback);
}
