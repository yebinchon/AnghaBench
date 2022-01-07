
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct sockaddr {int dummy; } ;
struct nfs_client {scalar_t__ cl_cons_state; scalar_t__ cl_minorversion; TYPE_1__* rpc_ops; int cl_addr; } ;
struct TYPE_2__ {int version; } ;


 scalar_t__ NFS_CS_READY ;
 scalar_t__ NFS_CS_SESSION_INITING ;
 int nfs_sockaddr_match_ipaddr (struct sockaddr const*,struct sockaddr*) ;

bool
nfs4_cb_match_client(const struct sockaddr *addr, struct nfs_client *clp,
       u32 minorversion)
{
 struct sockaddr *clap = (struct sockaddr *)&clp->cl_addr;


 if (!(clp->cl_cons_state == NFS_CS_READY ||
     clp->cl_cons_state == NFS_CS_SESSION_INITING))
  return 0;


 if (clp->rpc_ops->version != 4 ||
     clp->cl_minorversion != minorversion)
  return 0;


 if (!nfs_sockaddr_match_ipaddr(addr, clap))
  return 0;

 return 1;
}
