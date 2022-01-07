
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_client {int dummy; } ;


 int nfs4_state_mark_reclaim_helper (struct nfs_client*,int ) ;
 int nfs4_state_mark_reclaim_nograce ;
 int nfs_delegation_clear_all (struct nfs_client*) ;

__attribute__((used)) static void nfs4_state_start_reclaim_nograce(struct nfs_client *clp)
{
 nfs_delegation_clear_all(clp);
 nfs4_state_mark_reclaim_helper(clp, nfs4_state_mark_reclaim_nograce);
}
