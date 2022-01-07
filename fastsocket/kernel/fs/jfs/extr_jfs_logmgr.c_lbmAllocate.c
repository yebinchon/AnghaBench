
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lbuf {int l_pn; scalar_t__ l_ceor; scalar_t__ l_blkno; struct lbuf* l_freelist; int * l_wqnext; scalar_t__ l_flag; } ;
struct jfs_log {int l2bsize; scalar_t__ base; struct lbuf* lbuf_free; int free_wait; } ;


 int L2LOGPSIZE ;
 int LCACHE_LOCK (unsigned long) ;
 int LCACHE_SLEEP_COND (int ,struct lbuf*,unsigned long) ;
 int LCACHE_UNLOCK (unsigned long) ;

__attribute__((used)) static struct lbuf *lbmAllocate(struct jfs_log * log, int pn)
{
 struct lbuf *bp;
 unsigned long flags;




 LCACHE_LOCK(flags);
 LCACHE_SLEEP_COND(log->free_wait, (bp = log->lbuf_free), flags);
 log->lbuf_free = bp->l_freelist;
 LCACHE_UNLOCK(flags);

 bp->l_flag = 0;

 bp->l_wqnext = ((void*)0);
 bp->l_freelist = ((void*)0);

 bp->l_pn = pn;
 bp->l_blkno = log->base + (pn << (L2LOGPSIZE - log->l2bsize));
 bp->l_ceor = 0;

 return bp;
}
