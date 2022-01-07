
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int tid_t ;
struct tlock {int lock; } ;
struct metapage {int dummy; } ;
struct lv {int length; scalar_t__ offset; } ;
struct inode {int dummy; } ;
struct dt_lock {size_t index; size_t maxcnt; struct lv* lv; } ;
typedef scalar_t__ s64 ;
struct TYPE_5__ {void* next; void* prev; } ;
struct TYPE_6__ {TYPE_1__ header; } ;
typedef TYPE_2__ dtpage_t ;


 int BT_MARK_DIRTY (struct metapage*,struct inode*) ;
 int DT_GETPAGE (struct inode*,scalar_t__,struct metapage*,int ,TYPE_2__*,int) ;
 int DT_PUTPAGE (struct metapage*) ;
 int PSIZE ;
 void* cpu_to_le64 (scalar_t__) ;
 int jfs_info (char*,struct tlock*,struct inode*,struct metapage*) ;
 scalar_t__ le64_to_cpu (void*) ;
 int tlckDTREE ;
 int tlckRELINK ;
 scalar_t__ txLinelock (struct dt_lock*) ;
 struct tlock* txLock (int ,struct inode*,struct metapage*,int) ;

__attribute__((used)) static int dtRelink(tid_t tid, struct inode *ip, dtpage_t * p)
{
 int rc;
 struct metapage *mp;
 s64 nextbn, prevbn;
 struct tlock *tlck;
 struct dt_lock *dtlck;
 struct lv *lv;

 nextbn = le64_to_cpu(p->header.next);
 prevbn = le64_to_cpu(p->header.prev);


 if (nextbn != 0) {
  DT_GETPAGE(ip, nextbn, mp, PSIZE, p, rc);
  if (rc)
   return rc;

  BT_MARK_DIRTY(mp, ip);





  tlck = txLock(tid, ip, mp, tlckDTREE | tlckRELINK);
  jfs_info("dtRelink nextbn: tlck = 0x%p, ip = 0x%p, mp=0x%p",
   tlck, ip, mp);
  dtlck = (struct dt_lock *) & tlck->lock;


  if (dtlck->index >= dtlck->maxcnt)
   dtlck = (struct dt_lock *) txLinelock(dtlck);
  lv = & dtlck->lv[dtlck->index];
  lv->offset = 0;
  lv->length = 1;
  dtlck->index++;

  p->header.prev = cpu_to_le64(prevbn);
  DT_PUTPAGE(mp);
 }


 if (prevbn != 0) {
  DT_GETPAGE(ip, prevbn, mp, PSIZE, p, rc);
  if (rc)
   return rc;

  BT_MARK_DIRTY(mp, ip);





  tlck = txLock(tid, ip, mp, tlckDTREE | tlckRELINK);
  jfs_info("dtRelink prevbn: tlck = 0x%p, ip = 0x%p, mp=0x%p",
   tlck, ip, mp);
  dtlck = (struct dt_lock *) & tlck->lock;


  if (dtlck->index >= dtlck->maxcnt)
   dtlck = (struct dt_lock *) txLinelock(dtlck);
  lv = & dtlck->lv[dtlck->index];
  lv->offset = 0;
  lv->length = 1;
  dtlck->index++;

  p->header.next = cpu_to_le64(nextbn);
  DT_PUTPAGE(mp);
 }

 return 0;
}
