
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int idx_lebs; } ;
struct ubifs_info {int* gap_lebs; int ileb_cnt; int space_lock; TYPE_1__ lst; } ;


 int ENOMEM ;
 int ENOSPC ;
 int GFP_NOFS ;
 int dbg_dump_budg (struct ubifs_info*) ;
 int dbg_dump_lprops (struct ubifs_info*) ;
 int dbg_force_in_the_gaps_enabled ;
 int dbg_gc (char*,int,...) ;
 int get_leb_cnt (struct ubifs_info*,int) ;
 int kfree (int*) ;
 int* kmalloc (int,int ) ;
 int layout_leb_in_gaps (struct ubifs_info*,int*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int ubifs_assert (int) ;
 int ubifs_err (char*) ;

__attribute__((used)) static int layout_in_gaps(struct ubifs_info *c, int cnt)
{
 int err, leb_needed_cnt, written, *p;

 dbg_gc("%d znodes to write", cnt);

 c->gap_lebs = kmalloc(sizeof(int) * (c->lst.idx_lebs + 1), GFP_NOFS);
 if (!c->gap_lebs)
  return -ENOMEM;

 p = c->gap_lebs;
 do {
  ubifs_assert(p < c->gap_lebs + sizeof(int) * c->lst.idx_lebs);
  written = layout_leb_in_gaps(c, p);
  if (written < 0) {
   err = written;
   if (err != -ENOSPC) {
    kfree(c->gap_lebs);
    c->gap_lebs = ((void*)0);
    return err;
   }
   if (!dbg_force_in_the_gaps_enabled) {




    ubifs_err("out of space");
    spin_lock(&c->space_lock);
    dbg_dump_budg(c);
    spin_unlock(&c->space_lock);
    dbg_dump_lprops(c);
   }

   err = 0;
   break;
  }
  p++;
  cnt -= written;
  leb_needed_cnt = get_leb_cnt(c, cnt);
  dbg_gc("%d znodes remaining, need %d LEBs, have %d", cnt,
         leb_needed_cnt, c->ileb_cnt);
 } while (leb_needed_cnt > c->ileb_cnt);

 *p = -1;
 return 0;
}
