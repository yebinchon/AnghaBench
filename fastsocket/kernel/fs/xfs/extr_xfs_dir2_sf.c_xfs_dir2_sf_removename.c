
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_31__ TYPE_8__ ;
typedef struct TYPE_30__ TYPE_7__ ;
typedef struct TYPE_29__ TYPE_6__ ;
typedef struct TYPE_28__ TYPE_5__ ;
typedef struct TYPE_27__ TYPE_4__ ;
typedef struct TYPE_26__ TYPE_3__ ;
typedef struct TYPE_25__ TYPE_2__ ;
typedef struct TYPE_24__ TYPE_1__ ;


struct TYPE_25__ {int * if_data; } ;
struct TYPE_26__ {int if_flags; int if_bytes; TYPE_2__ if_u1; } ;
struct TYPE_24__ {int di_size; } ;
struct TYPE_28__ {TYPE_3__ i_df; TYPE_1__ i_d; int i_mount; } ;
typedef TYPE_5__ xfs_inode_t ;
struct TYPE_27__ {int i8count; int count; } ;
struct TYPE_29__ {TYPE_4__ hdr; } ;
typedef TYPE_6__ xfs_dir2_sf_t ;
struct TYPE_30__ {int namelen; int name; } ;
typedef TYPE_7__ xfs_dir2_sf_entry_t ;
struct TYPE_31__ {scalar_t__ inumber; int trans; int namelen; TYPE_5__* dp; } ;
typedef TYPE_8__ xfs_da_args_t ;


 int ASSERT (int) ;
 int EIO ;
 int ENOENT ;
 scalar_t__ XFS_CMP_EXACT ;
 int XFS_DATA_FORK ;
 scalar_t__ XFS_DIR2_MAX_SHORT_INUM ;
 int XFS_ERROR (int ) ;
 int XFS_FORCED_SHUTDOWN (int ) ;
 int XFS_IFINLINE ;
 int XFS_ILOG_CORE ;
 int XFS_ILOG_DDATA ;
 int memmove (char*,char*,int) ;
 int offsetof (int ,int ) ;
 int parent ;
 int trace_xfs_dir2_sf_removename (TYPE_8__*) ;
 scalar_t__ xfs_da_compname (TYPE_8__*,int ,int ) ;
 int xfs_dir2_sf_check (TYPE_8__*) ;
 int xfs_dir2_sf_entsize_byname (TYPE_6__*,int ) ;
 TYPE_7__* xfs_dir2_sf_firstentry (TYPE_6__*) ;
 scalar_t__ xfs_dir2_sf_get_inumber (TYPE_6__*,int ) ;
 int xfs_dir2_sf_hdr_size (int) ;
 int xfs_dir2_sf_hdr_t ;
 int xfs_dir2_sf_inumberp (TYPE_7__*) ;
 TYPE_7__* xfs_dir2_sf_nextentry (TYPE_6__*,TYPE_7__*) ;
 int xfs_dir2_sf_toino4 (TYPE_8__*) ;
 int xfs_idata_realloc (TYPE_5__*,int,int ) ;
 int xfs_trans_log_inode (int ,TYPE_5__*,int) ;

int
xfs_dir2_sf_removename(
 xfs_da_args_t *args)
{
 int byteoff;
 xfs_inode_t *dp;
 int entsize;
 int i;
 int newsize;
 int oldsize;
 xfs_dir2_sf_entry_t *sfep;
 xfs_dir2_sf_t *sfp;

 trace_xfs_dir2_sf_removename(args);

 dp = args->dp;

 ASSERT(dp->i_df.if_flags & XFS_IFINLINE);
 oldsize = (int)dp->i_d.di_size;



 if (oldsize < offsetof(xfs_dir2_sf_hdr_t, parent)) {
  ASSERT(XFS_FORCED_SHUTDOWN(dp->i_mount));
  return XFS_ERROR(EIO);
 }
 ASSERT(dp->i_df.if_bytes == oldsize);
 ASSERT(dp->i_df.if_u1.if_data != ((void*)0));
 sfp = (xfs_dir2_sf_t *)dp->i_df.if_u1.if_data;
 ASSERT(oldsize >= xfs_dir2_sf_hdr_size(sfp->hdr.i8count));




 for (i = 0, sfep = xfs_dir2_sf_firstentry(sfp); i < sfp->hdr.count;
    i++, sfep = xfs_dir2_sf_nextentry(sfp, sfep)) {
  if (xfs_da_compname(args, sfep->name, sfep->namelen) ==
        XFS_CMP_EXACT) {
   ASSERT(xfs_dir2_sf_get_inumber(sfp,
      xfs_dir2_sf_inumberp(sfep)) ==
        args->inumber);
   break;
  }
 }



 if (i == sfp->hdr.count)
  return XFS_ERROR(ENOENT);



 byteoff = (int)((char *)sfep - (char *)sfp);
 entsize = xfs_dir2_sf_entsize_byname(sfp, args->namelen);
 newsize = oldsize - entsize;



 if (byteoff + entsize < oldsize)
  memmove((char *)sfp + byteoff, (char *)sfp + byteoff + entsize,
   oldsize - (byteoff + entsize));



 sfp->hdr.count--;
 dp->i_d.di_size = newsize;



 xfs_idata_realloc(dp, newsize - oldsize, XFS_DATA_FORK);
 sfp = (xfs_dir2_sf_t *)dp->i_df.if_u1.if_data;
 xfs_dir2_sf_check(args);
 xfs_trans_log_inode(args->trans, dp, XFS_ILOG_CORE | XFS_ILOG_DDATA);
 return 0;
}
