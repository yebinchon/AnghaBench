
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubifs_lprops {int dirty; scalar_t__ free; int flags; } ;
struct ubifs_info {scalar_t__ leb_size; } ;
struct replay_entry {scalar_t__ offs; int dirty; int free; int lnum; } ;


 scalar_t__ IS_ERR (struct ubifs_lprops const*) ;
 int LPROPS_TAKEN ;
 int PTR_ERR (struct ubifs_lprops const*) ;
 int dbg_gc (char*,int ,scalar_t__,int) ;
 int dbg_mnt (char*,int ,scalar_t__,int) ;
 int dbg_msg (char*,int ,scalar_t__,int,int ,int) ;
 struct ubifs_lprops* ubifs_change_lp (struct ubifs_info*,struct ubifs_lprops const*,int ,int,int,int ) ;
 int ubifs_get_lprops (struct ubifs_info*) ;
 struct ubifs_lprops* ubifs_lpt_lookup_dirty (struct ubifs_info*,int ) ;
 int ubifs_release_lprops (struct ubifs_info*) ;

__attribute__((used)) static int set_bud_lprops(struct ubifs_info *c, struct replay_entry *r)
{
 const struct ubifs_lprops *lp;
 int err = 0, dirty;

 ubifs_get_lprops(c);

 lp = ubifs_lpt_lookup_dirty(c, r->lnum);
 if (IS_ERR(lp)) {
  err = PTR_ERR(lp);
  goto out;
 }

 dirty = lp->dirty;
 if (r->offs == 0 && (lp->free != c->leb_size || lp->dirty != 0)) {
  dbg_mnt("bud LEB %d was GC'd (%d free, %d dirty)", r->lnum,
   lp->free, lp->dirty);
  dbg_gc("bud LEB %d was GC'd (%d free, %d dirty)", r->lnum,
   lp->free, lp->dirty);
  dirty -= c->leb_size - lp->free;







  if (dirty != 0)
   dbg_msg("LEB %d lp: %d free %d dirty "
    "replay: %d free %d dirty", r->lnum, lp->free,
    lp->dirty, r->free, r->dirty);
 }
 lp = ubifs_change_lp(c, lp, r->free, dirty + r->dirty,
        lp->flags | LPROPS_TAKEN, 0);
 if (IS_ERR(lp)) {
  err = PTR_ERR(lp);
  goto out;
 }
out:
 ubifs_release_lprops(c);
 return err;
}
