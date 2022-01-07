
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct tblock {int lsn; int clsn; int synclist; int sb; } ;
struct metapage {int lsn; int clsn; int synclist; struct jfs_log* log; scalar_t__ data; } ;
struct jfs_log {int count; } ;
struct inomap {int im_nextiag; } ;
struct inode {int i_sb; } ;
struct iag {int * pmap; int * wmap; } ;
struct TYPE_4__ {struct inomap* i_imap; } ;
struct TYPE_3__ {struct jfs_log* log; } ;


 int EIO ;
 int HIGHORDER ;
 int INOSPEREXT ;
 int INOSPERIAG ;
 int INOTOIAG (unsigned long) ;
 int IREAD_LOCK (struct inode*,int ) ;
 int IREAD_UNLOCK (struct inode*) ;
 TYPE_2__* JFS_IP (struct inode*) ;
 TYPE_1__* JFS_SBI (int ) ;
 int L2INOSPEREXT ;
 int LOGSYNC_LOCK (struct jfs_log*,unsigned long) ;
 int LOGSYNC_UNLOCK (struct jfs_log*,unsigned long) ;
 int RDWRLOCK_IMAP ;
 int assert (int) ;
 int cpu_to_le32 (int) ;
 int diIAGRead (struct inomap*,int,struct metapage**) ;
 int jfs_error (int ,char*,...) ;
 int le32_to_cpu (int ) ;
 int list_add (int *,int *) ;
 int list_move (int *,int *) ;
 int logdiff (int,int,struct jfs_log*) ;
 int metapage_wait_for_io (struct metapage*) ;
 int release_metapage (struct metapage*) ;
 int write_metapage (struct metapage*) ;

int
diUpdatePMap(struct inode *ipimap,
      unsigned long inum, bool is_free, struct tblock * tblk)
{
 int rc;
 struct iag *iagp;
 struct metapage *mp;
 int iagno, ino, extno, bitno;
 struct inomap *imap;
 u32 mask;
 struct jfs_log *log;
 int lsn, difft, diffp;
 unsigned long flags;

 imap = JFS_IP(ipimap)->i_imap;

 iagno = INOTOIAG(inum);

 if (iagno >= imap->im_nextiag) {
  jfs_error(ipimap->i_sb,
     "diUpdatePMap: the iag is outside the map");
  return -EIO;
 }

 IREAD_LOCK(ipimap, RDWRLOCK_IMAP);
 rc = diIAGRead(imap, iagno, &mp);
 IREAD_UNLOCK(ipimap);
 if (rc)
  return (rc);
 metapage_wait_for_io(mp);
 iagp = (struct iag *) mp->data;



 ino = inum & (INOSPERIAG - 1);
 extno = ino >> L2INOSPEREXT;
 bitno = ino & (INOSPEREXT - 1);
 mask = HIGHORDER >> bitno;



 if (is_free) {





  if (!(le32_to_cpu(iagp->wmap[extno]) & mask)) {
   jfs_error(ipimap->i_sb,
      "diUpdatePMap: inode %ld not marked as "
      "allocated in wmap!", inum);
  }
  if (!(le32_to_cpu(iagp->pmap[extno]) & mask)) {
   jfs_error(ipimap->i_sb,
      "diUpdatePMap: inode %ld not marked as "
      "allocated in pmap!", inum);
  }

  iagp->pmap[extno] &= cpu_to_le32(~mask);
 }



 else {



  if (!(le32_to_cpu(iagp->wmap[extno]) & mask)) {
   release_metapage(mp);
   jfs_error(ipimap->i_sb,
      "diUpdatePMap: the inode is not allocated in "
      "the working map");
   return -EIO;
  }
  if ((le32_to_cpu(iagp->pmap[extno]) & mask) != 0) {
   release_metapage(mp);
   jfs_error(ipimap->i_sb,
      "diUpdatePMap: the inode is not free in the "
      "persistent map");
   return -EIO;
  }

  iagp->pmap[extno] |= cpu_to_le32(mask);
 }



 lsn = tblk->lsn;
 log = JFS_SBI(tblk->sb)->log;
 LOGSYNC_LOCK(log, flags);
 if (mp->lsn != 0) {

  logdiff(difft, lsn, log);
  logdiff(diffp, mp->lsn, log);
  if (difft < diffp) {
   mp->lsn = lsn;

   list_move(&mp->synclist, &tblk->synclist);
  }

  assert(mp->clsn);
  logdiff(difft, tblk->clsn, log);
  logdiff(diffp, mp->clsn, log);
  if (difft > diffp)
   mp->clsn = tblk->clsn;
 } else {
  mp->log = log;
  mp->lsn = lsn;

  log->count++;
  list_add(&mp->synclist, &tblk->synclist);
  mp->clsn = tblk->clsn;
 }
 LOGSYNC_UNLOCK(log, flags);
 write_metapage(mp);
 return (0);
}
