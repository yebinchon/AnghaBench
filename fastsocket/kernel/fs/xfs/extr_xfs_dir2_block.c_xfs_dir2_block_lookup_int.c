
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_29__ TYPE_8__ ;
typedef struct TYPE_28__ TYPE_7__ ;
typedef struct TYPE_27__ TYPE_6__ ;
typedef struct TYPE_26__ TYPE_5__ ;
typedef struct TYPE_25__ TYPE_4__ ;
typedef struct TYPE_24__ TYPE_3__ ;
typedef struct TYPE_23__ TYPE_2__ ;
typedef struct TYPE_22__ TYPE_1__ ;


typedef int xfs_trans_t ;
struct TYPE_23__ {TYPE_1__* m_dirnameops; int m_dirdatablk; } ;
typedef TYPE_2__ xfs_mount_t ;
struct TYPE_24__ {TYPE_2__* i_mount; } ;
typedef TYPE_3__ xfs_inode_t ;
struct TYPE_25__ {int address; int hashval; } ;
typedef TYPE_4__ xfs_dir2_leaf_entry_t ;
typedef int xfs_dir2_dataptr_t ;
struct TYPE_26__ {int namelen; int name; } ;
typedef TYPE_5__ xfs_dir2_data_entry_t ;
struct TYPE_27__ {int count; } ;
typedef TYPE_6__ xfs_dir2_block_tail_t ;
typedef int xfs_dir2_block_t ;
typedef int xfs_dahash_t ;
struct TYPE_28__ {int * data; } ;
typedef TYPE_7__ xfs_dabuf_t ;
struct TYPE_29__ {int hashval; int op_flags; int cmpresult; int * trans; TYPE_3__* dp; } ;
typedef TYPE_8__ xfs_da_args_t ;
typedef enum xfs_dacmp { ____Placeholder_xfs_dacmp } xfs_dacmp ;
struct TYPE_22__ {int (* compname ) (TYPE_8__*,int ,int ) ;} ;


 int ASSERT (int) ;
 int ENOENT ;
 scalar_t__ XFS_CMP_CASE ;
 int XFS_CMP_DIFFERENT ;
 int XFS_CMP_EXACT ;
 int XFS_DATA_FORK ;
 int XFS_DA_OP_OKNOENT ;
 int XFS_DIR2_NULL_DATAPTR ;
 int XFS_ERROR (int ) ;
 int be32_to_cpu (int ) ;
 int stub1 (TYPE_8__*,int ,int ) ;
 int xfs_da_brelse (int *,TYPE_7__*) ;
 int xfs_da_read_buf (int *,TYPE_3__*,int ,int,TYPE_7__**,int ) ;
 TYPE_4__* xfs_dir2_block_leaf_p (TYPE_6__*) ;
 TYPE_6__* xfs_dir2_block_tail_p (TYPE_2__*,int *) ;
 int xfs_dir2_data_check (TYPE_3__*,TYPE_7__*) ;
 int xfs_dir2_dataptr_to_off (TYPE_2__*,int) ;

__attribute__((used)) static int
xfs_dir2_block_lookup_int(
 xfs_da_args_t *args,
 xfs_dabuf_t **bpp,
 int *entno)
{
 xfs_dir2_dataptr_t addr;
 xfs_dir2_block_t *block;
 xfs_dir2_leaf_entry_t *blp;
 xfs_dabuf_t *bp;
 xfs_dir2_block_tail_t *btp;
 xfs_dir2_data_entry_t *dep;
 xfs_inode_t *dp;
 int error;
 xfs_dahash_t hash;
 int high;
 int low;
 int mid;
 xfs_mount_t *mp;
 xfs_trans_t *tp;
 enum xfs_dacmp cmp;

 dp = args->dp;
 tp = args->trans;
 mp = dp->i_mount;



 if ((error =
     xfs_da_read_buf(tp, dp, mp->m_dirdatablk, -1, &bp, XFS_DATA_FORK))) {
  return error;
 }
 ASSERT(bp != ((void*)0));
 block = bp->data;
 xfs_dir2_data_check(dp, bp);
 btp = xfs_dir2_block_tail_p(mp, block);
 blp = xfs_dir2_block_leaf_p(btp);




 for (low = 0, high = be32_to_cpu(btp->count) - 1; ; ) {
  ASSERT(low <= high);
  mid = (low + high) >> 1;
  if ((hash = be32_to_cpu(blp[mid].hashval)) == args->hashval)
   break;
  if (hash < args->hashval)
   low = mid + 1;
  else
   high = mid - 1;
  if (low > high) {
   ASSERT(args->op_flags & XFS_DA_OP_OKNOENT);
   xfs_da_brelse(tp, bp);
   return XFS_ERROR(ENOENT);
  }
 }



 while (mid > 0 && be32_to_cpu(blp[mid - 1].hashval) == args->hashval) {
  mid--;
 }




 do {
  if ((addr = be32_to_cpu(blp[mid].address)) == XFS_DIR2_NULL_DATAPTR)
   continue;



  dep = (xfs_dir2_data_entry_t *)
   ((char *)block + xfs_dir2_dataptr_to_off(mp, addr));





  cmp = mp->m_dirnameops->compname(args, dep->name, dep->namelen);
  if (cmp != XFS_CMP_DIFFERENT && cmp != args->cmpresult) {
   args->cmpresult = cmp;
   *bpp = bp;
   *entno = mid;
   if (cmp == XFS_CMP_EXACT)
    return 0;
  }
 } while (++mid < be32_to_cpu(btp->count) &&
   be32_to_cpu(blp[mid].hashval) == hash);

 ASSERT(args->op_flags & XFS_DA_OP_OKNOENT);




 if (args->cmpresult == XFS_CMP_CASE)
  return 0;



 xfs_da_brelse(tp, bp);
 return XFS_ERROR(ENOENT);
}
