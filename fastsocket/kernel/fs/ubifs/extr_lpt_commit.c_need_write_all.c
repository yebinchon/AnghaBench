
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ubifs_info {int lpt_lebs; scalar_t__ lpt_first; scalar_t__ nhead_lnum; scalar_t__ leb_size; scalar_t__ nhead_offs; int lpt_sz; TYPE_1__* ltab; } ;
struct TYPE_2__ {scalar_t__ free; scalar_t__ dirty; } ;



__attribute__((used)) static int need_write_all(struct ubifs_info *c)
{
 long long free = 0;
 int i;

 for (i = 0; i < c->lpt_lebs; i++) {
  if (i + c->lpt_first == c->nhead_lnum)
   free += c->leb_size - c->nhead_offs;
  else if (c->ltab[i].free == c->leb_size)
   free += c->leb_size;
  else if (c->ltab[i].free + c->ltab[i].dirty == c->leb_size)
   free += c->leb_size;
 }

 if (free <= c->lpt_sz * 2)
  return 1;
 return 0;
}
