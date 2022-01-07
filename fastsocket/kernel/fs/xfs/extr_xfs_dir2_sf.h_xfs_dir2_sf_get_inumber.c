
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int xfs_intino_t ;
struct TYPE_6__ {scalar_t__ i8count; } ;
struct TYPE_7__ {TYPE_1__ hdr; } ;
typedef TYPE_2__ xfs_dir2_sf_t ;
struct TYPE_8__ {int i8; int i4; } ;
typedef TYPE_3__ xfs_dir2_inou_t ;


 scalar_t__ XFS_GET_DIR_INO4 (int ) ;
 scalar_t__ XFS_GET_DIR_INO8 (int ) ;

__attribute__((used)) static inline xfs_intino_t
xfs_dir2_sf_get_inumber(xfs_dir2_sf_t *sfp, xfs_dir2_inou_t *from)
{
 return ((sfp)->hdr.i8count == 0 ? (xfs_intino_t)XFS_GET_DIR_INO4((from)->i4) : (xfs_intino_t)XFS_GET_DIR_INO8((from)->i8));


}
