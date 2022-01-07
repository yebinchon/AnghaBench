
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ubifs_lprops {int lnum; int flags; int free; } ;
struct TYPE_2__ {scalar_t__ idx_lebs; int empty_lebs; int taken_empty_lebs; } ;
struct ubifs_info {scalar_t__ min_idx_lebs; int freeable_cnt; int idx_gc_cnt; int leb_size; int space_lock; TYPE_1__ lst; } ;


 scalar_t__ IS_ERR (struct ubifs_lprops const*) ;
 int LPROPS_NC ;
 int LPROPS_TAKEN ;
 int PTR_ERR (struct ubifs_lprops const*) ;
 int dbg_find (char*,int,...) ;
 struct ubifs_lprops* do_find_free_space (struct ubifs_info*,int,int,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int ubifs_assert (int) ;
 struct ubifs_lprops* ubifs_change_lp (struct ubifs_info*,struct ubifs_lprops const*,int ,int ,int,int ) ;
 int ubifs_get_lprops (struct ubifs_info*) ;
 int ubifs_leb_unmap (struct ubifs_info*,int) ;
 int ubifs_release_lprops (struct ubifs_info*) ;

int ubifs_find_free_space(struct ubifs_info *c, int min_space, int *offs,
     int squeeze)
{
 const struct ubifs_lprops *lprops;
 int lebs, rsvd_idx_lebs, pick_free = 0, err, lnum, flags;

 dbg_find("min_space %d", min_space);
 ubifs_get_lprops(c);


 spin_lock(&c->space_lock);
 if (c->min_idx_lebs > c->lst.idx_lebs)
  rsvd_idx_lebs = c->min_idx_lebs - c->lst.idx_lebs;
 else
  rsvd_idx_lebs = 0;
 lebs = c->lst.empty_lebs + c->freeable_cnt + c->idx_gc_cnt -
        c->lst.taken_empty_lebs;
 if (rsvd_idx_lebs < lebs)




  if (c->lst.empty_lebs - c->lst.taken_empty_lebs > 0) {
   pick_free = 1;
   c->lst.taken_empty_lebs += 1;
  }
 spin_unlock(&c->space_lock);

 lprops = do_find_free_space(c, min_space, pick_free, squeeze);
 if (IS_ERR(lprops)) {
  err = PTR_ERR(lprops);
  goto out;
 }

 lnum = lprops->lnum;
 flags = lprops->flags | LPROPS_TAKEN;

 lprops = ubifs_change_lp(c, lprops, LPROPS_NC, LPROPS_NC, flags, 0);
 if (IS_ERR(lprops)) {
  err = PTR_ERR(lprops);
  goto out;
 }

 if (pick_free) {
  spin_lock(&c->space_lock);
  c->lst.taken_empty_lebs -= 1;
  spin_unlock(&c->space_lock);
 }

 *offs = c->leb_size - lprops->free;
 ubifs_release_lprops(c);

 if (*offs == 0) {






  err = ubifs_leb_unmap(c, lnum);
  if (err)
   return err;
 }

 dbg_find("found LEB %d, free %d", lnum, c->leb_size - *offs);
 ubifs_assert(*offs <= c->leb_size - min_space);
 return lnum;

out:
 if (pick_free) {
  spin_lock(&c->space_lock);
  c->lst.taken_empty_lebs -= 1;
  spin_unlock(&c->space_lock);
 }
 ubifs_release_lprops(c);
 return err;
}
