
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_long ;
struct sockaddr_in {int dummy; } ;
struct netconfig {int dummy; } ;
typedef int mntent_t ;
typedef int am_nfs_handle_t ;


 scalar_t__ NFS_VERSION4 ;
 int compute_nfs23_args (void*,int *,int,struct netconfig*,struct sockaddr_in*,scalar_t__,char*,int *,char*,char*) ;
 int compute_nfs4_args (void*,int *,int,struct netconfig*,struct sockaddr_in*,scalar_t__,char*,int *,char*,char*) ;

void
compute_nfs_args(void *nap,
                 mntent_t *mntp,
                 int genflags,
                 struct netconfig *nfsncp,
                 struct sockaddr_in *ip_addr,
                 u_long nfs_version,
                 char *nfs_proto,
                 am_nfs_handle_t *fhp,
                 char *host_name,
                 char *fs_name)
{






    compute_nfs23_args(nap, mntp, genflags, nfsncp, ip_addr, nfs_version,
         nfs_proto, fhp, host_name, fs_name);
}
