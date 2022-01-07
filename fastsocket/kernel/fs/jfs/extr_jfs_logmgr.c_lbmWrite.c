
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lbuf {int l_pn; int l_flag; struct lbuf* l_wqnext; scalar_t__ l_blkno; } ;
struct jfs_log {int l2bsize; struct lbuf* wqueue; scalar_t__ base; } ;


 int L2LOGPSIZE ;
 int LCACHE_LOCK (unsigned long) ;
 int LCACHE_UNLOCK (unsigned long) ;
 int LOGGC_LOCK (struct jfs_log*) ;
 int LOGGC_UNLOCK (struct jfs_log*) ;
 int jfs_info (char*,struct lbuf*,int,int) ;
 int lbmRedrive (struct lbuf*) ;
 int lbmSYNC ;
 int lbmStartIO (struct lbuf*) ;
 int lbmWRITE ;

__attribute__((used)) static void lbmWrite(struct jfs_log * log, struct lbuf * bp, int flag,
       int cant_block)
{
 struct lbuf *tail;
 unsigned long flags;

 jfs_info("lbmWrite: bp:0x%p flag:0x%x pn:0x%x", bp, flag, bp->l_pn);


 bp->l_blkno =
     log->base + (bp->l_pn << (L2LOGPSIZE - log->l2bsize));

 LCACHE_LOCK(flags);




 bp->l_flag = flag;







 tail = log->wqueue;


 if (bp->l_wqnext == ((void*)0)) {

  if (tail == ((void*)0)) {
   log->wqueue = bp;
   bp->l_wqnext = bp;
  } else {
   log->wqueue = bp;
   bp->l_wqnext = tail->l_wqnext;
   tail->l_wqnext = bp;
  }

  tail = bp;
 }


 if ((bp != tail->l_wqnext) || !(flag & lbmWRITE)) {
  LCACHE_UNLOCK(flags);
  return;
 }

 LCACHE_UNLOCK(flags);

 if (cant_block)
  lbmRedrive(bp);
 else if (flag & lbmSYNC)
  lbmStartIO(bp);
 else {
  LOGGC_UNLOCK(log);
  lbmStartIO(bp);
  LOGGC_LOCK(log);
 }
}
