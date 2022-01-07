
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ minor; scalar_t__ major; } ;
struct nfs_server {scalar_t__ namelen; int mount_time; TYPE_3__ fsid; int client_acl; TYPE_2__* client; TYPE_1__* nfs_client; int destroy; } ;
struct nfs_fh {int dummy; } ;
struct nfs_fattr {TYPE_3__ fsid; } ;
typedef int rpc_authflavor_t ;
struct TYPE_5__ {int cl_timeout; } ;
struct TYPE_4__ {int cl_count; } ;


 int ENOMEM ;
 struct nfs_server* ERR_PTR (int) ;
 int IS_ERR (int ) ;
 scalar_t__ NFS4_MAXNAMLEN ;
 int atomic_inc (int *) ;
 int dprintk (char*,...) ;
 int jiffies ;
 struct nfs_fattr* nfs_alloc_fattr () ;
 struct nfs_server* nfs_alloc_server () ;
 int nfs_free_fattr (struct nfs_fattr*) ;
 int nfs_free_server (struct nfs_server*) ;
 int nfs_init_server_aclclient (struct nfs_server*) ;
 int nfs_init_server_rpcclient (struct nfs_server*,int ,int ) ;
 int nfs_probe_fsinfo (struct nfs_server*,struct nfs_fh*,struct nfs_fattr*) ;
 int nfs_server_copy_userdata (struct nfs_server*,struct nfs_server*) ;
 int nfs_server_insert_lists (struct nfs_server*) ;
 int nfs_start_lockd (struct nfs_server*) ;

struct nfs_server *nfs_clone_server(struct nfs_server *source,
        struct nfs_fh *fh,
        struct nfs_fattr *fattr,
        rpc_authflavor_t flavor)
{
 struct nfs_server *server;
 struct nfs_fattr *fattr_fsinfo;
 int error;

 dprintk("--> nfs_clone_server(,%llx:%llx,)\n",
  (unsigned long long) fattr->fsid.major,
  (unsigned long long) fattr->fsid.minor);

 server = nfs_alloc_server();
 if (!server)
  return ERR_PTR(-ENOMEM);

 error = -ENOMEM;
 fattr_fsinfo = nfs_alloc_fattr();
 if (fattr_fsinfo == ((void*)0))
  goto out_free_server;


 server->nfs_client = source->nfs_client;
 server->destroy = source->destroy;
 atomic_inc(&server->nfs_client->cl_count);
 nfs_server_copy_userdata(server, source);

 server->fsid = fattr->fsid;

 error = nfs_init_server_rpcclient(server,
   source->client->cl_timeout,
   flavor);
 if (error < 0)
  goto out_free_server;
 if (!IS_ERR(source->client_acl))
  nfs_init_server_aclclient(server);


 error = nfs_probe_fsinfo(server, fh, fattr_fsinfo);
 if (error < 0)
  goto out_free_server;

 if (server->namelen == 0 || server->namelen > NFS4_MAXNAMLEN)
  server->namelen = NFS4_MAXNAMLEN;

 dprintk("Cloned FSID: %llx:%llx\n",
  (unsigned long long) server->fsid.major,
  (unsigned long long) server->fsid.minor);

 error = nfs_start_lockd(server);
 if (error < 0)
  goto out_free_server;

 nfs_server_insert_lists(server);
 server->mount_time = jiffies;

 nfs_free_fattr(fattr_fsinfo);
 dprintk("<-- nfs_clone_server() = %p\n", server);
 return server;

out_free_server:
 nfs_free_fattr(fattr_fsinfo);
 nfs_free_server(server);
 dprintk("<-- nfs_clone_server() = error %d\n", error);
 return ERR_PTR(error);
}
