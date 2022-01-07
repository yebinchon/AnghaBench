
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u32 ;
struct super_block {struct nfs_server* s_fs_info; } ;
struct nfs_server {int flags; unsigned int acregmin; unsigned int acregmax; unsigned int acdirmin; unsigned int acdirmax; TYPE_5__* nfs_client; int port; TYPE_4__* client; int wsize; int rsize; } ;
struct TYPE_12__ {int addrlen; int address; int port; } ;
struct nfs_parsed_mount_data {int flags; unsigned int acregmin; unsigned int acregmax; unsigned int acdirmin; unsigned int acdirmax; unsigned int timeo; TYPE_6__ nfs_server; int * auth_flavors; int retrans; int wsize; int rsize; } ;
struct nfs_mount_data {int version; } ;
struct nfs4_mount_data {int version; } ;
struct TYPE_11__ {int cl_addr; int cl_addrlen; TYPE_1__* rpc_ops; } ;
struct TYPE_10__ {TYPE_3__* cl_timeout; TYPE_2__* cl_auth; } ;
struct TYPE_9__ {unsigned int to_initval; int to_retries; } ;
struct TYPE_8__ {int au_flavor; } ;
struct TYPE_7__ {int version; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 unsigned int HZ ;
 int MS_SYNCHRONOUS ;
 int NFS_MOUNT_NOAC ;
 int kfree (struct nfs_parsed_mount_data*) ;
 struct nfs_parsed_mount_data* kzalloc (int,int ) ;
 int lock_kernel () ;
 int memcpy (int *,int *,int ) ;
 int nfs_compare_remount_data (struct nfs_server*,struct nfs_parsed_mount_data*) ;
 int nfs_parse_mount_options (char*,struct nfs_parsed_mount_data*) ;
 int unlock_kernel () ;

__attribute__((used)) static int
nfs_remount(struct super_block *sb, int *flags, char *raw_data)
{
 int error;
 struct nfs_server *nfss = sb->s_fs_info;
 struct nfs_parsed_mount_data *data;
 struct nfs_mount_data *options = (struct nfs_mount_data *)raw_data;
 struct nfs4_mount_data *options4 = (struct nfs4_mount_data *)raw_data;
 u32 nfsvers = nfss->nfs_client->rpc_ops->version;







 if ((nfsvers == 4 && (!options4 || options4->version == 1)) ||
     (nfsvers <= 3 && (!options || (options->version >= 1 &&
        options->version <= 6))))
  return 0;

 data = kzalloc(sizeof(*data), GFP_KERNEL);
 if (data == ((void*)0))
  return -ENOMEM;

 lock_kernel();

 data->flags = nfss->flags;
 data->rsize = nfss->rsize;
 data->wsize = nfss->wsize;
 data->retrans = nfss->client->cl_timeout->to_retries;
 data->auth_flavors[0] = nfss->client->cl_auth->au_flavor;
 data->acregmin = nfss->acregmin / HZ;
 data->acregmax = nfss->acregmax / HZ;
 data->acdirmin = nfss->acdirmin / HZ;
 data->acdirmax = nfss->acdirmax / HZ;
 data->timeo = 10U * nfss->client->cl_timeout->to_initval / HZ;
 data->nfs_server.port = nfss->port;
 data->nfs_server.addrlen = nfss->nfs_client->cl_addrlen;
 memcpy(&data->nfs_server.address, &nfss->nfs_client->cl_addr,
  data->nfs_server.addrlen);


 error = nfs_parse_mount_options((char *)options, data);
 if (error < 0)
  goto out;







 if (data->flags & NFS_MOUNT_NOAC)
  *flags |= MS_SYNCHRONOUS;


 error = nfs_compare_remount_data(nfss, data);
out:
 kfree(data);
 unlock_kernel();
 return error;
}
