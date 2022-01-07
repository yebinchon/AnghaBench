
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
typedef scalar_t__ u16 ;
typedef int tid_t ;
struct tlock {int lock; } ;
struct tblock {scalar_t__ xflag; } ;
struct metapage {int dummy; } ;
struct lv {int length; scalar_t__ offset; } ;
struct TYPE_3__ {int flag; int freelist; int freecnt; int idotdot; scalar_t__ nextindex; } ;
struct TYPE_4__ {TYPE_1__ header; struct dtslot* slot; } ;
struct jfs_inode_info {int next_index; TYPE_2__ i_dtroot; int bxflag; } ;
struct inode {int i_size; } ;
struct dtslot {int next; } ;
struct dt_lock {scalar_t__ index; struct lv* lv; } ;
typedef TYPE_2__ dtroot_t ;


 int ASSERT (int) ;
 int BT_LEAF ;
 int BT_ROOT ;
 int COMMIT_PWMAP ;
 int COMMIT_Stale ;
 scalar_t__ DO_INDEX (struct inode*) ;
 int DTROOTMAXSLOT ;
 int DXD_INDEX ;
 int IDATASIZE ;
 struct jfs_inode_info* JFS_IP (struct inode*) ;
 int cpu_to_le32 (int ) ;
 int jfs_dirtable_inline (struct inode*) ;
 int set_cflag (int ,struct inode*) ;
 struct tblock* tid_to_tblock (int ) ;
 int tlckBTROOT ;
 int tlckDTREE ;
 int tlckENTRY ;
 struct tlock* txLock (int ,struct inode*,struct metapage*,int) ;
 int xtTruncate (int ,struct inode*,int ,int ) ;

void dtInitRoot(tid_t tid, struct inode *ip, u32 idotdot)
{
 struct jfs_inode_info *jfs_ip = JFS_IP(ip);
 dtroot_t *p;
 int fsi;
 struct dtslot *f;
 struct tlock *tlck;
 struct dt_lock *dtlck;
 struct lv *lv;
 u16 xflag_save;





 if (DO_INDEX(ip)) {
  if (!jfs_dirtable_inline(ip)) {
   struct tblock *tblk = tid_to_tblock(tid);






   xflag_save = tblk->xflag;
   tblk->xflag = 0;
   xtTruncate(tid, ip, 0, COMMIT_PWMAP);
   set_cflag(COMMIT_Stale, ip);

   tblk->xflag = xflag_save;
  } else
   ip->i_size = 1;

  jfs_ip->next_index = 2;
 } else
  ip->i_size = IDATASIZE;






 tlck = txLock(tid, ip, (struct metapage *) & jfs_ip->bxflag,
        tlckDTREE | tlckENTRY | tlckBTROOT);
 dtlck = (struct dt_lock *) & tlck->lock;


 ASSERT(dtlck->index == 0);
 lv = & dtlck->lv[0];
 lv->offset = 0;
 lv->length = DTROOTMAXSLOT;
 dtlck->index++;

 p = &jfs_ip->i_dtroot;

 p->header.flag = DXD_INDEX | BT_ROOT | BT_LEAF;

 p->header.nextindex = 0;


 fsi = 1;
 f = &p->slot[fsi];


 for (fsi++; fsi < DTROOTMAXSLOT; f++, fsi++)
  f->next = fsi;
 f->next = -1;

 p->header.freelist = 1;
 p->header.freecnt = 8;


 p->header.idotdot = cpu_to_le32(idotdot);

 return;
}
