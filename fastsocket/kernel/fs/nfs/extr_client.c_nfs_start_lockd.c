
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sockaddr {int dummy; } ;
struct nlmclnt_initdata {int nfs_version; int noresvport; int protocol; int addrlen; struct sockaddr* address; int hostname; } ;
struct nlm_host {int dummy; } ;
struct nfs_server {int flags; int destroy; struct nlm_host* nlm_host; struct nfs_client* nfs_client; } ;
struct nfs_client {int cl_proto; TYPE_1__* rpc_ops; int cl_addrlen; int cl_addr; int cl_hostname; } ;
struct TYPE_2__ {int version; } ;


 int IPPROTO_TCP ;
 int IPPROTO_UDP ;
 scalar_t__ IS_ERR (struct nlm_host*) ;
 int NFS_MOUNT_LOCAL_FCNTL ;
 int NFS_MOUNT_LOCAL_FLOCK ;
 int NFS_MOUNT_NORESVPORT ;
 int PTR_ERR (struct nlm_host*) ;

 int nfs_destroy_server ;
 struct nlm_host* nlmclnt_init (struct nlmclnt_initdata*) ;

__attribute__((used)) static int nfs_start_lockd(struct nfs_server *server)
{
 struct nlm_host *host;
 struct nfs_client *clp = server->nfs_client;
 struct nlmclnt_initdata nlm_init = {
  .hostname = clp->cl_hostname,
  .address = (struct sockaddr *)&clp->cl_addr,
  .addrlen = clp->cl_addrlen,
  .nfs_version = clp->rpc_ops->version,
  .noresvport = server->flags & NFS_MOUNT_NORESVPORT ?
     1 : 0,
 };

 if (nlm_init.nfs_version > 3)
  return 0;
 if ((server->flags & NFS_MOUNT_LOCAL_FLOCK) &&
   (server->flags & NFS_MOUNT_LOCAL_FCNTL))
  return 0;

 switch (clp->cl_proto) {
  default:
   nlm_init.protocol = IPPROTO_TCP;
   break;
  case 128:
   nlm_init.protocol = IPPROTO_UDP;
 }

 host = nlmclnt_init(&nlm_init);
 if (IS_ERR(host))
  return PTR_ERR(host);

 server->nlm_host = host;
 server->destroy = nfs_destroy_server;
 return 0;
}
