
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_long ;


 scalar_t__ NFS_VERS_MAX ;
 scalar_t__ NFS_VERS_MIN ;

int
nfs_valid_version(u_long v)
{
  return v >= NFS_VERS_MIN && v <= NFS_VERS_MAX;
}
