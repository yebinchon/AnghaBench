
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_client {scalar_t__ cl_cons_state; } ;


 int EPROTONOSUPPORT ;
 scalar_t__ NFS_CS_READY ;
 int nfs4_has_session (struct nfs_client*) ;

int nfs4_check_client_ready(struct nfs_client *clp)
{
 if (!nfs4_has_session(clp))
  return 0;
 if (clp->cl_cons_state < NFS_CS_READY)
  return -EPROTONOSUPPORT;
 return 0;
}
