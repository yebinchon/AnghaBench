
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zfs_share_type_t ;
typedef scalar_t__ zfs_share_proto_t ;
typedef int zfs_handle_t ;
typedef int boolean_t ;


 int B_FALSE ;
 int B_TRUE ;
 scalar_t__ PROTO_END ;
 scalar_t__ ZFS_IS_VOLUME (int *) ;
 scalar_t__* share_all_proto ;
 int zfs_is_shared_proto (int *,int *,scalar_t__) ;

boolean_t
zfs_is_shared(zfs_handle_t *zhp)
{
 zfs_share_type_t rc = 0;
 zfs_share_proto_t *curr_proto;

 if (ZFS_IS_VOLUME(zhp))
  return (B_FALSE);

 for (curr_proto = share_all_proto; *curr_proto != PROTO_END;
     curr_proto++)
  rc |= zfs_is_shared_proto(zhp, ((void*)0), *curr_proto);

 return (rc ? B_TRUE : B_FALSE);
}
