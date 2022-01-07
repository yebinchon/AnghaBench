
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zfs_handle_t ;
typedef int boolean_t ;


 int PROTO_NFS ;
 scalar_t__ SHARED_NOT_SHARED ;
 scalar_t__ zfs_is_shared_proto (int *,char**,int ) ;

boolean_t
zfs_is_shared_nfs(zfs_handle_t *zhp, char **where)
{
 return (zfs_is_shared_proto(zhp, where,
     PROTO_NFS) != SHARED_NOT_SHARED);
}
