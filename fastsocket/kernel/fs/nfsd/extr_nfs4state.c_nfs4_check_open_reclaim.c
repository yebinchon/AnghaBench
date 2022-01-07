
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int clientid_t ;
typedef int __be32 ;


 scalar_t__ nfs4_find_reclaim_client (int *) ;
 int nfs_ok ;
 int nfserr_reclaim_bad ;

__be32
nfs4_check_open_reclaim(clientid_t *clid)
{
 return nfs4_find_reclaim_client(clid) ? nfs_ok : nfserr_reclaim_bad;
}
