
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_6__ ;
typedef struct TYPE_22__ TYPE_5__ ;
typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;


typedef int xfs_off_t ;
struct TYPE_18__ {scalar_t__ m_dirdatablk; } ;
typedef TYPE_1__ xfs_mount_t ;
struct TYPE_19__ {TYPE_1__* i_mount; } ;
typedef TYPE_2__ xfs_inode_t ;
struct TYPE_20__ {int length; int freetag; } ;
typedef TYPE_3__ xfs_dir2_data_unused_t ;
struct TYPE_21__ {int inumber; int namelen; scalar_t__ name; } ;
typedef TYPE_4__ xfs_dir2_data_entry_t ;
typedef int xfs_dir2_block_tail_t ;
struct TYPE_22__ {scalar_t__ u; } ;
typedef TYPE_5__ xfs_dir2_block_t ;
struct TYPE_23__ {TYPE_5__* data; } ;
typedef TYPE_6__ xfs_dabuf_t ;
typedef scalar_t__ (* filldir_t ) (void*,char*,int ,int,int ,int ) ;


 int ASSERT (int ) ;
 int DT_UNKNOWN ;
 int XFS_DATA_FORK ;
 scalar_t__ XFS_DIR2_DATA_FREE_TAG ;
 scalar_t__ be16_to_cpu (int ) ;
 int be64_to_cpu (int ) ;
 int xfs_da_brelse (int *,TYPE_6__*) ;
 int xfs_da_read_buf (int *,TYPE_2__*,scalar_t__,int,TYPE_6__**,int ) ;
 scalar_t__ xfs_dir2_block_leaf_p (int *) ;
 int * xfs_dir2_block_tail_p (TYPE_1__*,TYPE_5__*) ;
 int xfs_dir2_data_check (TYPE_2__*,TYPE_6__*) ;
 int xfs_dir2_data_entsize (int ) ;
 scalar_t__ xfs_dir2_dataptr_to_db (TYPE_1__*,int) ;
 int xfs_dir2_dataptr_to_off (TYPE_1__*,int) ;
 int xfs_dir2_db_off_to_dataptr (TYPE_1__*,scalar_t__,int) ;

int
xfs_dir2_block_getdents(
 xfs_inode_t *dp,
 void *dirent,
 xfs_off_t *offset,
 filldir_t filldir)
{
 xfs_dir2_block_t *block;
 xfs_dabuf_t *bp;
 xfs_dir2_block_tail_t *btp;
 xfs_dir2_data_entry_t *dep;
 xfs_dir2_data_unused_t *dup;
 char *endptr;
 int error;
 xfs_mount_t *mp;
 char *ptr;
 int wantoff;
 xfs_off_t cook;

 mp = dp->i_mount;



 if (xfs_dir2_dataptr_to_db(mp, *offset) > mp->m_dirdatablk) {
  return 0;
 }



 error = xfs_da_read_buf(((void*)0), dp, mp->m_dirdatablk, -1,
    &bp, XFS_DATA_FORK);
 if (error)
  return error;

 ASSERT(bp != ((void*)0));




 wantoff = xfs_dir2_dataptr_to_off(mp, *offset);
 block = bp->data;
 xfs_dir2_data_check(dp, bp);



 btp = xfs_dir2_block_tail_p(mp, block);
 ptr = (char *)block->u;
 endptr = (char *)xfs_dir2_block_leaf_p(btp);





 while (ptr < endptr) {
  dup = (xfs_dir2_data_unused_t *)ptr;



  if (be16_to_cpu(dup->freetag) == XFS_DIR2_DATA_FREE_TAG) {
   ptr += be16_to_cpu(dup->length);
   continue;
  }

  dep = (xfs_dir2_data_entry_t *)ptr;




  ptr += xfs_dir2_data_entsize(dep->namelen);



  if ((char *)dep - (char *)block < wantoff)
   continue;

  cook = xfs_dir2_db_off_to_dataptr(mp, mp->m_dirdatablk,
         (char *)dep - (char *)block);




  if (filldir(dirent, (char *)dep->name, dep->namelen,
       cook & 0x7fffffff, be64_to_cpu(dep->inumber),
       DT_UNKNOWN)) {
   *offset = cook & 0x7fffffff;
   xfs_da_brelse(((void*)0), bp);
   return 0;
  }
 }





 *offset = xfs_dir2_db_off_to_dataptr(mp, mp->m_dirdatablk + 1, 0) &
   0x7fffffff;
 xfs_da_brelse(((void*)0), bp);
 return 0;
}
