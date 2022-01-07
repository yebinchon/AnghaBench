
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ubifs_info {int lpt_lebs; int lpt_first; int nhead_lnum; scalar_t__ leb_size; int lp_mutex; TYPE_1__* ltab; } ;
struct TYPE_2__ {scalar_t__ free; int dirty; int tgc; } ;


 int ENOSPC ;
 int lpt_gc_lnum (struct ubifs_info*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int ubifs_assert (int) ;

__attribute__((used)) static int lpt_gc(struct ubifs_info *c)
{
 int i, lnum = -1, dirty = 0;

 mutex_lock(&c->lp_mutex);
 for (i = 0; i < c->lpt_lebs; i++) {
  ubifs_assert(!c->ltab[i].tgc);
  if (i + c->lpt_first == c->nhead_lnum ||
      c->ltab[i].free + c->ltab[i].dirty == c->leb_size)
   continue;
  if (c->ltab[i].dirty > dirty) {
   dirty = c->ltab[i].dirty;
   lnum = i + c->lpt_first;
  }
 }
 mutex_unlock(&c->lp_mutex);
 if (lnum == -1)
  return -ENOSPC;
 return lpt_gc_lnum(c, lnum);
}
