
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_8__ ;
typedef struct TYPE_23__ TYPE_7__ ;
typedef struct TYPE_22__ TYPE_6__ ;
typedef struct TYPE_21__ TYPE_5__ ;
typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


struct TYPE_20__ {int di_size; } ;
struct TYPE_17__ {scalar_t__ if_data; } ;
struct TYPE_18__ {TYPE_1__ if_u1; } ;
struct TYPE_21__ {TYPE_4__ i_d; TYPE_2__ i_df; } ;
typedef TYPE_5__ xfs_inode_t ;
struct TYPE_19__ {int i8count; int count; } ;
struct TYPE_22__ {TYPE_3__ hdr; } ;
typedef TYPE_6__ xfs_dir2_sf_t ;
struct TYPE_23__ {int namelen; int name; } ;
typedef TYPE_7__ xfs_dir2_sf_entry_t ;
typedef int xfs_dir2_data_aoff_t ;
struct TYPE_24__ {scalar_t__ inumber; int name; int namelen; TYPE_5__* dp; } ;
typedef TYPE_8__ xfs_da_args_t ;


 int XFS_DATA_FORK ;
 scalar_t__ XFS_DIR2_MAX_SHORT_INUM ;
 int memcpy (int ,int ,int ) ;
 int xfs_dir2_sf_check (TYPE_8__*) ;
 int xfs_dir2_sf_entsize_byname (TYPE_6__*,int ) ;
 int xfs_dir2_sf_inumberp (TYPE_7__*) ;
 int xfs_dir2_sf_put_inumber (TYPE_6__*,scalar_t__*,int ) ;
 int xfs_dir2_sf_put_offset (TYPE_7__*,int ) ;
 int xfs_idata_realloc (TYPE_5__*,int ,int ) ;

__attribute__((used)) static void
xfs_dir2_sf_addname_easy(
 xfs_da_args_t *args,
 xfs_dir2_sf_entry_t *sfep,
 xfs_dir2_data_aoff_t offset,
 int new_isize)
{
 int byteoff;
 xfs_inode_t *dp;
 xfs_dir2_sf_t *sfp;

 dp = args->dp;

 sfp = (xfs_dir2_sf_t *)dp->i_df.if_u1.if_data;
 byteoff = (int)((char *)sfep - (char *)sfp);



 xfs_idata_realloc(dp, xfs_dir2_sf_entsize_byname(sfp, args->namelen),
  XFS_DATA_FORK);



 sfp = (xfs_dir2_sf_t *)dp->i_df.if_u1.if_data;
 sfep = (xfs_dir2_sf_entry_t *)((char *)sfp + byteoff);



 sfep->namelen = args->namelen;
 xfs_dir2_sf_put_offset(sfep, offset);
 memcpy(sfep->name, args->name, sfep->namelen);
 xfs_dir2_sf_put_inumber(sfp, &args->inumber,
  xfs_dir2_sf_inumberp(sfep));



 sfp->hdr.count++;




 dp->i_d.di_size = new_isize;
 xfs_dir2_sf_check(args);
}
