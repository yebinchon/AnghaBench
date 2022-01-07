
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubifs_lpt_lprops {int dummy; } ;
struct ubifs_info {int lpt_lebs; int lpt_drty_flgs; int lp_mutex; int ltab; int ltab_cmt; scalar_t__ big_lpt; int dirty_pn_cnt; scalar_t__ check_lpt_free; } ;


 int LSAVE_DIRTY ;
 int LTAB_DIRTY ;
 int dbg_check_ltab (struct ubifs_info*) ;
 int dbg_chk_lpt_free_spc (struct ubifs_info*) ;
 int dbg_cmt (char*) ;
 int dbg_lp (char*) ;
 int get_cnodes_to_commit (struct ubifs_info*) ;
 int layout_cnodes (struct ubifs_info*) ;
 int lpt_gc (struct ubifs_info*) ;
 int lpt_tgc_start (struct ubifs_info*) ;
 int make_tree_dirty (struct ubifs_info*) ;
 int memcpy (int ,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ need_write_all (struct ubifs_info*) ;
 int populate_lsave (struct ubifs_info*) ;
 int ubifs_assert (int) ;

int ubifs_lpt_start_commit(struct ubifs_info *c)
{
 int err, cnt;

 dbg_lp("");

 mutex_lock(&c->lp_mutex);
 err = dbg_chk_lpt_free_spc(c);
 if (err)
  goto out;
 err = dbg_check_ltab(c);
 if (err)
  goto out;

 if (c->check_lpt_free) {






  c->check_lpt_free = 0;
  while (need_write_all(c)) {
   mutex_unlock(&c->lp_mutex);
   err = lpt_gc(c);
   if (err)
    return err;
   mutex_lock(&c->lp_mutex);
  }
 }

 lpt_tgc_start(c);

 if (!c->dirty_pn_cnt) {
  dbg_cmt("no cnodes to commit");
  err = 0;
  goto out;
 }

 if (!c->big_lpt && need_write_all(c)) {

  err = make_tree_dirty(c);
  if (err)
   goto out;
  lpt_tgc_start(c);
 }

 if (c->big_lpt)
  populate_lsave(c);

 cnt = get_cnodes_to_commit(c);
 ubifs_assert(cnt != 0);

 err = layout_cnodes(c);
 if (err)
  goto out;


 memcpy(c->ltab_cmt, c->ltab,
        sizeof(struct ubifs_lpt_lprops) * c->lpt_lebs);
 c->lpt_drty_flgs &= ~(LTAB_DIRTY | LSAVE_DIRTY);

out:
 mutex_unlock(&c->lp_mutex);
 return err;
}
