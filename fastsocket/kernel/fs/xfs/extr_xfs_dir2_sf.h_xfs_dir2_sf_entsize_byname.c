
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ i8count; } ;
struct TYPE_5__ {TYPE_1__ hdr; } ;
typedef TYPE_2__ xfs_dir2_sf_t ;
typedef int xfs_dir2_sf_entry_t ;
typedef int xfs_dir2_ino8_t ;
typedef int xfs_dir2_ino4_t ;
typedef int uint ;
typedef int len ;



__attribute__((used)) static inline int xfs_dir2_sf_entsize_byname(xfs_dir2_sf_t *sfp, int len)
{
 return ((uint)sizeof(xfs_dir2_sf_entry_t) - 1 + (len) - ((sfp)->hdr.i8count == 0) * ((uint)sizeof(xfs_dir2_ino8_t) - (uint)sizeof(xfs_dir2_ino4_t)));


}
