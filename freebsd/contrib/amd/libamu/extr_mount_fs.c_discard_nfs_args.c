
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_long ;


 scalar_t__ NFS_VERSION4 ;
 int discard_nfs23_args (void*) ;
 int discard_nfs4_args (void*) ;

void
discard_nfs_args(void *nap, u_long nfs_version)
{





    discard_nfs23_args(nap);
}
