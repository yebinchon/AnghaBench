
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ubifs_info {int lpt_first; int lpt_last; TYPE_1__* ltab; } ;
struct TYPE_2__ {int free; int dirty; } ;


 int dbg_lp (char*,int,int,int,int,int) ;
 int ubifs_assert (int) ;

__attribute__((used)) static void upd_ltab(struct ubifs_info *c, int lnum, int free, int dirty)
{
 dbg_lp("LEB %d free %d dirty %d to %d +%d",
        lnum, c->ltab[lnum - c->lpt_first].free,
        c->ltab[lnum - c->lpt_first].dirty, free, dirty);
 ubifs_assert(lnum >= c->lpt_first && lnum <= c->lpt_last);
 c->ltab[lnum - c->lpt_first].free = free;
 c->ltab[lnum - c->lpt_first].dirty += dirty;
}
