
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int i8count; } ;
struct TYPE_5__ {TYPE_1__ hdr; } ;
typedef TYPE_2__ xfs_dir2_sf_t ;
typedef int xfs_dir2_sf_entry_t ;
typedef scalar_t__ sfp ;


 scalar_t__ xfs_dir2_sf_hdr_size (int ) ;

__attribute__((used)) static inline xfs_dir2_sf_entry_t *xfs_dir2_sf_firstentry(xfs_dir2_sf_t *sfp)
{
 return ((xfs_dir2_sf_entry_t *) ((char *)(sfp) + xfs_dir2_sf_hdr_size(sfp->hdr.i8count)));

}
