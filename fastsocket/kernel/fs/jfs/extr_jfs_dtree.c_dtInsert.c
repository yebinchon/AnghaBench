
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_7__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int tid_t ;
struct tlock {int lock; } ;
struct metapage {int dummy; } ;
struct lv {int length; scalar_t__ offset; } ;
struct inode {int dummy; } ;
struct dtsplit {int index; int nslot; TYPE_4__* data; struct component_name* key; struct metapage* mp; } ;
struct dt_lock {size_t index; size_t maxcnt; struct lv* lv; } ;
struct component_name {int namlen; } ;
struct btstack {int top; } ;
typedef int s64 ;
typedef int ino_t ;
struct TYPE_10__ {int freecnt; int flag; int nextindex; scalar_t__ stblindex; } ;
struct TYPE_11__ {TYPE_2__ header; } ;
typedef TYPE_3__ dtpage_t ;
struct TYPE_9__ {int ino; struct inode* ip; int tid; } ;
struct TYPE_12__ {TYPE_1__ leaf; } ;
typedef TYPE_4__ ddata_t ;
struct TYPE_13__ {scalar_t__ next_index; } ;


 int ASSERT (int) ;
 int BT_MARK_DIRTY (struct metapage*,struct inode*) ;
 int BT_ROOT ;
 scalar_t__ DIREND ;
 scalar_t__ DO_INDEX (struct inode*) ;
 int DT_GETSEARCH (struct inode*,int ,int ,struct metapage*,TYPE_3__*,int) ;
 int DT_PUTPAGE (struct metapage*) ;
 int EMLINK ;
 TYPE_7__* JFS_IP (struct inode*) ;
 int L2DTSLOTSIZE ;
 int NDTLEAF (int ) ;
 int NDTLEAF_LEGACY (int ) ;
 int dtInsertEntry (TYPE_3__*,int,struct component_name*,TYPE_4__*,struct dt_lock**) ;
 int dtSplitUp (int ,struct inode*,struct dtsplit*,struct btstack*) ;
 int tlckDTREE ;
 int tlckENTRY ;
 scalar_t__ txLinelock (struct dt_lock*) ;
 struct tlock* txLock (int ,struct inode*,struct metapage*,int) ;

int dtInsert(tid_t tid, struct inode *ip,
  struct component_name * name, ino_t * fsn, struct btstack * btstack)
{
 int rc = 0;
 struct metapage *mp;
 dtpage_t *p;
 s64 bn;
 int index;
 struct dtsplit split;
 ddata_t data;
 struct dt_lock *dtlck;
 int n;
 struct tlock *tlck;
 struct lv *lv;
 DT_GETSEARCH(ip, btstack->top, bn, mp, p, index);




 if (DO_INDEX(ip)) {
  if (JFS_IP(ip)->next_index == DIREND) {
   DT_PUTPAGE(mp);
   return -EMLINK;
  }
  n = NDTLEAF(name->namlen);
  data.leaf.tid = tid;
  data.leaf.ip = ip;
 } else {
  n = NDTLEAF_LEGACY(name->namlen);
  data.leaf.ip = ((void*)0);
 }
 data.leaf.ino = *fsn;
 if (n > p->header.freecnt) {
  split.mp = mp;
  split.index = index;
  split.nslot = n;
  split.key = name;
  split.data = &data;
  rc = dtSplitUp(tid, ip, &split, btstack);
  return rc;
 }






 BT_MARK_DIRTY(mp, ip);



 tlck = txLock(tid, ip, mp, tlckDTREE | tlckENTRY);
 dtlck = (struct dt_lock *) & tlck->lock;
 ASSERT(dtlck->index == 0);
 lv = & dtlck->lv[0];


 lv->offset = 0;
 lv->length = 1;
 dtlck->index++;

 dtInsertEntry(p, index, name, &data, &dtlck);


 if (!(p->header.flag & BT_ROOT)) {
  if (dtlck->index >= dtlck->maxcnt)
   dtlck = (struct dt_lock *) txLinelock(dtlck);
  lv = & dtlck->lv[dtlck->index];
  n = index >> L2DTSLOTSIZE;
  lv->offset = p->header.stblindex + n;
  lv->length =
      ((p->header.nextindex - 1) >> L2DTSLOTSIZE) - n + 1;
  dtlck->index++;
 }


 DT_PUTPAGE(mp);

 return 0;
}
