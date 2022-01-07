
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int xfs_fsblock_t ;
typedef scalar_t__ xfs_fileoff_t ;
struct TYPE_6__ {scalar_t__ br_startblock; scalar_t__ br_blockcount; } ;
typedef TYPE_1__ xfs_bmbt_irec_t ;
struct TYPE_7__ {int xbf_first; int xbf_count; } ;
typedef TYPE_2__ xfs_bmap_free_t ;
struct xfs_inode {int i_ino; int i_mount; } ;


 int ASSERT (int) ;
 scalar_t__ DELAYSTARTBLOCK ;
 int WARN_ON (int) ;
 int XFS_BMAPI_ENTIRE ;
 int XFS_FORCED_SHUTDOWN (int ) ;
 int XFS_ILOCK_EXCL ;
 int xfs_alert (int ,char*,int ,scalar_t__) ;
 int xfs_bmap_init (TYPE_2__*,int *) ;
 int xfs_bmapi (int *,struct xfs_inode*,scalar_t__,int,int ,int *,int ,TYPE_1__*,int*,int *) ;
 int xfs_bunmapi (int *,struct xfs_inode*,scalar_t__,int,int ,int,int *,TYPE_2__*,int*) ;
 int xfs_isilocked (struct xfs_inode*,int ) ;

int
xfs_bmap_punch_delalloc_range(
 struct xfs_inode *ip,
 xfs_fileoff_t start_fsb,
 xfs_fileoff_t length)
{
 xfs_fileoff_t remaining = length;
 int error = 0;

 ASSERT(xfs_isilocked(ip, XFS_ILOCK_EXCL));

 do {
  int done;
  xfs_bmbt_irec_t imap;
  int nimaps = 1;
  xfs_fsblock_t firstblock;
  xfs_bmap_free_t flist;







  error = xfs_bmapi(((void*)0), ip, start_fsb, 1,
    XFS_BMAPI_ENTIRE, ((void*)0), 0, &imap,
    &nimaps, ((void*)0));

  if (error) {

   if (!XFS_FORCED_SHUTDOWN(ip->i_mount)) {
    xfs_alert(ip->i_mount,
   "Failed delalloc mapping lookup ino %lld fsb %lld.",
      ip->i_ino, start_fsb);
   }
   break;
  }
  if (!nimaps) {

   goto next_block;
  }
  if (imap.br_startblock != DELAYSTARTBLOCK) {

   goto next_block;
  }
  WARN_ON(imap.br_blockcount == 0);







  xfs_bmap_init(&flist, &firstblock);
  error = xfs_bunmapi(((void*)0), ip, start_fsb, 1, 0, 1, &firstblock,
     &flist, &done);
  if (error)
   break;

  ASSERT(!flist.xbf_count && !flist.xbf_first);
next_block:
  start_fsb++;
  remaining--;
 } while(remaining > 0);

 return error;
}
