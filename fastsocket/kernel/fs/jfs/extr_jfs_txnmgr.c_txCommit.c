
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int tid_t ;
struct TYPE_5__ {TYPE_2__* ip; } ;
struct tblock {int xflag; int flag; TYPE_1__ u; scalar_t__ last; scalar_t__ next; int logtid; } ;
struct super_block {int dummy; } ;
struct lrd {scalar_t__ length; int type; scalar_t__ backchain; int logtid; } ;
struct jfs_log {int dummy; } ;
struct jfs_inode_info {scalar_t__ blid; scalar_t__ bxflag; int anon_inode_list; scalar_t__ atltail; scalar_t__ atlhead; } ;
struct inode {scalar_t__ i_ino; struct super_block* i_sb; } ;
struct commit {int nip; struct inode** iplist; struct lrd lrd; struct jfs_log* log; int tid; struct super_block* sb; } ;
typedef scalar_t__ ino_t ;
struct TYPE_8__ {struct jfs_log* log; } ;
struct TYPE_7__ {scalar_t__ next; } ;
struct TYPE_6__ {int i_state; scalar_t__ i_nlink; int i_count; } ;


 int ASSERT (int) ;
 int COMMIT_DELETE ;
 int COMMIT_Dirty ;
 int COMMIT_FORCE ;
 int COMMIT_LAZY ;
 int COMMIT_Nolink ;
 int COMMIT_SYNC ;
 int EROFS ;
 int I_SYNC ;
 struct jfs_inode_info* JFS_IP (struct inode*) ;
 TYPE_4__* JFS_SBI (struct super_block*) ;
 int LOG_COMMIT ;
 int TXN_LOCK () ;
 int TXN_UNLOCK () ;
 int atomic_inc (int *) ;
 int clear_cflag (int ,struct inode*) ;
 int cpu_to_le16 (int ) ;
 int cpu_to_le32 (int ) ;
 int diWrite (int ,struct inode*) ;
 scalar_t__ isReadOnly (struct inode*) ;
 int jfs_info (char*,int ,int) ;
 TYPE_3__* lid_to_tlock (scalar_t__) ;
 int list_del_init (int *) ;
 int lmGroupCommit (struct jfs_log*,struct tblock*) ;
 int lmLog (struct jfs_log*,struct tblock*,struct lrd*,int *) ;
 int tblkGC_LAZY ;
 int test_cflag (int ,TYPE_2__*) ;
 struct tblock* tid_to_tblock (int ) ;
 int txAbort (int ,int) ;
 int txBegin (struct super_block*,int ) ;
 int txForce (struct tblock*) ;
 int txLog (struct jfs_log*,struct tblock*,struct commit*) ;
 int txRelease (struct tblock*) ;
 int txUnlock (struct tblock*) ;
 int txUpdateMap (struct tblock*) ;

int txCommit(tid_t tid,
      int nip,
      struct inode **iplist,
      int flag)
{
 int rc = 0;
 struct commit cd;
 struct jfs_log *log;
 struct tblock *tblk;
 struct lrd *lrd;
 int lsn;
 struct inode *ip;
 struct jfs_inode_info *jfs_ip;
 int k, n;
 ino_t top;
 struct super_block *sb;

 jfs_info("txCommit, tid = %d, flag = %d", tid, flag);

 if (isReadOnly(iplist[0])) {
  rc = -EROFS;
  goto TheEnd;
 }

 sb = cd.sb = iplist[0]->i_sb;
 cd.tid = tid;

 if (tid == 0)
  tid = txBegin(sb, 0);
 tblk = tid_to_tblock(tid);




 log = JFS_SBI(sb)->log;
 cd.log = log;


 lrd = &cd.lrd;
 lrd->logtid = cpu_to_le32(tblk->logtid);
 lrd->backchain = 0;

 tblk->xflag |= flag;

 if ((flag & (COMMIT_FORCE | COMMIT_SYNC)) == 0)
  tblk->xflag |= COMMIT_LAZY;
 cd.iplist = iplist;
 cd.nip = nip;
 for (k = 0; k < cd.nip; k++) {
  top = (cd.iplist[k])->i_ino;
  for (n = k + 1; n < cd.nip; n++) {
   ip = cd.iplist[n];
   if (ip->i_ino > top) {
    top = ip->i_ino;
    cd.iplist[n] = cd.iplist[k];
    cd.iplist[k] = ip;
   }
  }

  ip = cd.iplist[k];
  jfs_ip = JFS_IP(ip);
  clear_cflag(COMMIT_Dirty, ip);


  if (jfs_ip->atlhead) {
   lid_to_tlock(jfs_ip->atltail)->next = tblk->next;
   tblk->next = jfs_ip->atlhead;
   if (!tblk->last)
    tblk->last = jfs_ip->atltail;
   jfs_ip->atlhead = jfs_ip->atltail = 0;
   TXN_LOCK();
   list_del_init(&jfs_ip->anon_inode_list);
   TXN_UNLOCK();
  }





  if (((rc = diWrite(tid, ip))))
   goto out;
 }






 if ((rc = txLog(log, tblk, &cd)))
  goto TheEnd;





 if (tblk->xflag & COMMIT_DELETE) {
  atomic_inc(&tblk->u.ip->i_count);
  if (tblk->u.ip->i_state & I_SYNC)
   tblk->xflag &= ~COMMIT_LAZY;
 }

 ASSERT((!(tblk->xflag & COMMIT_DELETE)) ||
        ((tblk->u.ip->i_nlink == 0) &&
  !test_cflag(COMMIT_Nolink, tblk->u.ip)));




 lrd->type = cpu_to_le16(LOG_COMMIT);
 lrd->length = 0;
 lsn = lmLog(log, tblk, lrd, ((void*)0));

 lmGroupCommit(log, tblk);
 if (flag & COMMIT_FORCE)
  txForce(tblk);
 if (tblk->xflag & COMMIT_FORCE)
  txUpdateMap(tblk);




 txRelease(tblk);

 if ((tblk->flag & tblkGC_LAZY) == 0)
  txUnlock(tblk);





 for (k = 0; k < cd.nip; k++) {
  ip = cd.iplist[k];
  jfs_ip = JFS_IP(ip);




  jfs_ip->bxflag = 0;
  jfs_ip->blid = 0;
 }

      out:
 if (rc != 0)
  txAbort(tid, 1);

      TheEnd:
 jfs_info("txCommit: tid = %d, returning %d", tid, rc);
 return rc;
}
