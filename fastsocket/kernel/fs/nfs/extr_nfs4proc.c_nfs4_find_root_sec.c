
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_server {int dummy; } ;
struct nfs_fsinfo {int dummy; } ;
struct nfs_fh {int dummy; } ;
typedef int rpc_authflavor_t ;


 int EACCES ;
 int EPERM ;
 int NFS4ERR_WRONGSEC ;
 int NFS_MAX_SECFLAVORS ;
 int RPC_AUTH_NULL ;
 int gss_mech_list_pseudoflavors (int *) ;
 int nfs4_lookup_root_sec (struct nfs_server*,struct nfs_fh*,struct nfs_fsinfo*,int ) ;

__attribute__((used)) static int nfs4_find_root_sec(struct nfs_server *server, struct nfs_fh *fhandle,
         struct nfs_fsinfo *info)
{
 int i, len, status = 0;
 rpc_authflavor_t flav_array[NFS_MAX_SECFLAVORS + 2];

 len = gss_mech_list_pseudoflavors(&flav_array[0]);
 flav_array[len] = RPC_AUTH_NULL;
 len += 1;

 for (i = 0; i < len; i++) {
  status = nfs4_lookup_root_sec(server, fhandle, info, flav_array[i]);
  if (status == -NFS4ERR_WRONGSEC || status == -EACCES)
   continue;
  break;
 }







 if (status == -EACCES)
  status = -EPERM;
 return status;
}
