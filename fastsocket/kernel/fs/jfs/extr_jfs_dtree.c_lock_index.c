
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int tid_t ;
struct tlock {scalar_t__ lock; } ;
struct metapage {int dummy; } ;
struct lv {int offset; int length; } ;
struct linelock {size_t index; size_t maxcnt; struct lv* lv; } ;
struct inode {int dummy; } ;


 int tlckDATA ;
 struct linelock* txLinelock (struct linelock*) ;
 struct tlock* txLock (int ,struct inode*,struct metapage*,int ) ;

__attribute__((used)) static inline void lock_index(tid_t tid, struct inode *ip, struct metapage * mp,
         u32 index)
{
 struct tlock *tlck;
 struct linelock *llck;
 struct lv *lv;

 tlck = txLock(tid, ip, mp, tlckDATA);
 llck = (struct linelock *) tlck->lock;

 if (llck->index >= llck->maxcnt)
  llck = txLinelock(llck);
 lv = &llck->lv[llck->index];





 lv->offset = ((index - 2) & 511) >> 1;
 lv->length = 1;
 llck->index++;
}
