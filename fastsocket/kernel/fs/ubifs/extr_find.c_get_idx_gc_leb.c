
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubifs_lprops {int flags; int free; int dirty; int lnum; } ;
struct ubifs_info {int dummy; } ;


 scalar_t__ IS_ERR (struct ubifs_lprops const*) ;
 int LPROPS_INDEX ;
 int LPROPS_NC ;
 int PTR_ERR (struct ubifs_lprops const*) ;
 int dbg_find (char*,int ,int ,int ,int) ;
 struct ubifs_lprops* ubifs_change_lp (struct ubifs_info*,struct ubifs_lprops const*,int ,int ,int,int) ;
 int ubifs_get_idx_gc_leb (struct ubifs_info*) ;
 struct ubifs_lprops* ubifs_lpt_lookup_dirty (struct ubifs_info*,int) ;

__attribute__((used)) static int get_idx_gc_leb(struct ubifs_info *c)
{
 const struct ubifs_lprops *lp;
 int err, lnum;

 err = ubifs_get_idx_gc_leb(c);
 if (err < 0)
  return err;
 lnum = err;




 lp = ubifs_lpt_lookup_dirty(c, lnum);
 if (IS_ERR(lp))
  return PTR_ERR(lp);
 lp = ubifs_change_lp(c, lp, LPROPS_NC, LPROPS_NC,
        lp->flags | LPROPS_INDEX, -1);
 if (IS_ERR(lp))
  return PTR_ERR(lp);
 dbg_find("LEB %d, dirty %d and free %d flags %#x",
   lp->lnum, lp->dirty, lp->free, lp->flags);
 return lnum;
}
