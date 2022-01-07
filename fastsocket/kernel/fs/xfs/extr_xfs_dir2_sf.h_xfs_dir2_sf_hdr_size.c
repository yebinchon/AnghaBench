
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xfs_dir2_sf_hdr_t ;
typedef int xfs_dir2_ino8_t ;
typedef int xfs_dir2_ino4_t ;
typedef int uint ;



__attribute__((used)) static inline int xfs_dir2_sf_hdr_size(int i8count)
{
 return ((uint)sizeof(xfs_dir2_sf_hdr_t) - ((i8count) == 0) * ((uint)sizeof(xfs_dir2_ino8_t) - (uint)sizeof(xfs_dir2_ino4_t)));


}
