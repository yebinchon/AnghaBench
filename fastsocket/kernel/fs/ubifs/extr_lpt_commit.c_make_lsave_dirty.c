
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubifs_info {int lsave_lnum; int lsave_offs; int lpt_drty_flgs; int lsave_sz; } ;


 int LSAVE_DIRTY ;
 int ubifs_add_lpt_dirt (struct ubifs_info*,int,int ) ;

__attribute__((used)) static int make_lsave_dirty(struct ubifs_info *c, int lnum, int offs)
{
 if (lnum != c->lsave_lnum || offs != c->lsave_offs)
  return 0;
 if (!(c->lpt_drty_flgs & LSAVE_DIRTY)) {
  c->lpt_drty_flgs |= LSAVE_DIRTY;
  ubifs_add_lpt_dirt(c, c->lsave_lnum, c->lsave_sz);
 }
 return 0;
}
