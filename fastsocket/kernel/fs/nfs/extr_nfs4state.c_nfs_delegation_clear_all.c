
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_client {int dummy; } ;


 int nfs_delegation_mark_reclaim (struct nfs_client*) ;
 int nfs_delegation_reap_unclaimed (struct nfs_client*) ;

__attribute__((used)) static void nfs_delegation_clear_all(struct nfs_client *clp)
{
 nfs_delegation_mark_reclaim(clp);
 nfs_delegation_reap_unclaimed(clp);
}
