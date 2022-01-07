
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_32__ TYPE_9__ ;
typedef struct TYPE_31__ TYPE_8__ ;
typedef struct TYPE_30__ TYPE_7__ ;
typedef struct TYPE_29__ TYPE_6__ ;
typedef struct TYPE_28__ TYPE_5__ ;
typedef struct TYPE_27__ TYPE_4__ ;
typedef struct TYPE_26__ TYPE_3__ ;
typedef struct TYPE_25__ TYPE_2__ ;
typedef struct TYPE_24__ TYPE_22__ ;
typedef struct TYPE_23__ TYPE_1__ ;


struct TYPE_26__ {scalar_t__ di_size; } ;
struct TYPE_23__ {int * if_data; } ;
struct TYPE_25__ {int if_flags; scalar_t__ if_bytes; TYPE_1__ if_u1; } ;
struct TYPE_29__ {TYPE_22__* i_mount; void* i_ino; TYPE_3__ i_d; TYPE_2__ i_df; } ;
typedef TYPE_6__ xfs_inode_t ;
struct TYPE_27__ {int count; int parent; int i8count; } ;
struct TYPE_30__ {TYPE_4__ hdr; } ;
typedef TYPE_7__ xfs_dir2_sf_t ;
struct TYPE_31__ {int namelen; int name; } ;
typedef TYPE_8__ xfs_dir2_sf_entry_t ;
struct TYPE_32__ {int namelen; char* name; int cmpresult; int op_flags; void* inumber; TYPE_6__* dp; } ;
typedef TYPE_9__ xfs_da_args_t ;
typedef enum xfs_dacmp { ____Placeholder_xfs_dacmp } xfs_dacmp ;
struct TYPE_28__ {int (* compname ) (TYPE_9__*,int ,int ) ;} ;
struct TYPE_24__ {TYPE_5__* m_dirnameops; } ;


 int ASSERT (int) ;
 int EEXIST ;
 int EIO ;
 int ENOENT ;
 int XFS_CMP_DIFFERENT ;
 int XFS_CMP_EXACT ;
 int XFS_DA_OP_OKNOENT ;
 int XFS_ERROR (int) ;
 int XFS_FORCED_SHUTDOWN (TYPE_22__*) ;
 int XFS_IFINLINE ;
 scalar_t__ offsetof (int ,int ) ;
 int parent ;
 int stub1 (TYPE_9__*,int ,int ) ;
 int trace_xfs_dir2_sf_lookup (TYPE_9__*) ;
 int xfs_dir2_sf_check (TYPE_9__*) ;
 TYPE_8__* xfs_dir2_sf_firstentry (TYPE_7__*) ;
 void* xfs_dir2_sf_get_inumber (TYPE_7__*,int *) ;
 scalar_t__ xfs_dir2_sf_hdr_size (int ) ;
 int xfs_dir2_sf_hdr_t ;
 int * xfs_dir2_sf_inumberp (TYPE_8__*) ;
 TYPE_8__* xfs_dir2_sf_nextentry (TYPE_7__*,TYPE_8__*) ;
 int xfs_dir_cilookup_result (TYPE_9__*,int ,int ) ;

int
xfs_dir2_sf_lookup(
 xfs_da_args_t *args)
{
 xfs_inode_t *dp;
 int i;
 int error;
 xfs_dir2_sf_entry_t *sfep;
 xfs_dir2_sf_t *sfp;
 enum xfs_dacmp cmp;
 xfs_dir2_sf_entry_t *ci_sfep;

 trace_xfs_dir2_sf_lookup(args);

 xfs_dir2_sf_check(args);
 dp = args->dp;

 ASSERT(dp->i_df.if_flags & XFS_IFINLINE);



 if (dp->i_d.di_size < offsetof(xfs_dir2_sf_hdr_t, parent)) {
  ASSERT(XFS_FORCED_SHUTDOWN(dp->i_mount));
  return XFS_ERROR(EIO);
 }
 ASSERT(dp->i_df.if_bytes == dp->i_d.di_size);
 ASSERT(dp->i_df.if_u1.if_data != ((void*)0));
 sfp = (xfs_dir2_sf_t *)dp->i_df.if_u1.if_data;
 ASSERT(dp->i_d.di_size >= xfs_dir2_sf_hdr_size(sfp->hdr.i8count));



 if (args->namelen == 1 && args->name[0] == '.') {
  args->inumber = dp->i_ino;
  args->cmpresult = XFS_CMP_EXACT;
  return XFS_ERROR(EEXIST);
 }



 if (args->namelen == 2 &&
     args->name[0] == '.' && args->name[1] == '.') {
  args->inumber = xfs_dir2_sf_get_inumber(sfp, &sfp->hdr.parent);
  args->cmpresult = XFS_CMP_EXACT;
  return XFS_ERROR(EEXIST);
 }



 ci_sfep = ((void*)0);
 for (i = 0, sfep = xfs_dir2_sf_firstentry(sfp); i < sfp->hdr.count;
    i++, sfep = xfs_dir2_sf_nextentry(sfp, sfep)) {





  cmp = dp->i_mount->m_dirnameops->compname(args, sfep->name,
        sfep->namelen);
  if (cmp != XFS_CMP_DIFFERENT && cmp != args->cmpresult) {
   args->cmpresult = cmp;
   args->inumber = xfs_dir2_sf_get_inumber(sfp,
      xfs_dir2_sf_inumberp(sfep));
   if (cmp == XFS_CMP_EXACT)
    return XFS_ERROR(EEXIST);
   ci_sfep = sfep;
  }
 }
 ASSERT(args->op_flags & XFS_DA_OP_OKNOENT);




 if (!ci_sfep)
  return XFS_ERROR(ENOENT);

 error = xfs_dir_cilookup_result(args, ci_sfep->name, ci_sfep->namelen);
 return XFS_ERROR(error);
}
