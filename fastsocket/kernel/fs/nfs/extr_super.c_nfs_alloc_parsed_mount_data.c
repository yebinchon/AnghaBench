
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int protocol; void* port; } ;
struct TYPE_3__ {void* port; } ;
struct nfs_parsed_mount_data {int auth_flavor_len; unsigned int version; int lsm_opts; scalar_t__ minorversion; int * auth_flavors; TYPE_2__ nfs_server; TYPE_1__ mount_server; int acdirmax; int acdirmin; int acregmax; int acregmin; } ;


 int GFP_KERNEL ;
 int NFS_DEF_ACDIRMAX ;
 int NFS_DEF_ACDIRMIN ;
 int NFS_DEF_ACREGMAX ;
 int NFS_DEF_ACREGMIN ;
 void* NFS_UNSPEC_PORT ;
 int RPC_AUTH_UNIX ;
 int XPRT_TRANSPORT_TCP ;
 struct nfs_parsed_mount_data* kzalloc (int,int ) ;
 int security_init_mnt_opts (int *) ;

__attribute__((used)) static struct nfs_parsed_mount_data *nfs_alloc_parsed_mount_data(unsigned int version)
{
 struct nfs_parsed_mount_data *data;

 data = kzalloc(sizeof(*data), GFP_KERNEL);
 if (data) {
  data->acregmin = NFS_DEF_ACREGMIN;
  data->acregmax = NFS_DEF_ACREGMAX;
  data->acdirmin = NFS_DEF_ACDIRMIN;
  data->acdirmax = NFS_DEF_ACDIRMAX;
  data->mount_server.port = NFS_UNSPEC_PORT;
  data->nfs_server.port = NFS_UNSPEC_PORT;
  data->nfs_server.protocol = XPRT_TRANSPORT_TCP;
  data->auth_flavors[0] = RPC_AUTH_UNIX;
  data->auth_flavor_len = 1;
  data->version = version;
  data->minorversion = 0;
  security_init_mnt_opts(&data->lsm_opts);
 }
 return data;
}
