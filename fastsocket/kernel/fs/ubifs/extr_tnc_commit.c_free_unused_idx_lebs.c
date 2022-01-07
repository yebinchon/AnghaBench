
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubifs_info {int ileb_nxt; int ileb_cnt; int* ilebs; } ;


 int LPROPS_INDEX ;
 int LPROPS_NC ;
 int LPROPS_TAKEN ;
 int dbg_cmt (char*,int) ;
 int ubifs_change_one_lp (struct ubifs_info*,int,int ,int ,int ,int,int ) ;

__attribute__((used)) static int free_unused_idx_lebs(struct ubifs_info *c)
{
 int i, err = 0, lnum, er;

 for (i = c->ileb_nxt; i < c->ileb_cnt; i++) {
  lnum = c->ilebs[i];
  dbg_cmt("LEB %d", lnum);
  er = ubifs_change_one_lp(c, lnum, LPROPS_NC, LPROPS_NC, 0,
      LPROPS_INDEX | LPROPS_TAKEN, 0);
  if (!err)
   err = er;
 }
 return err;
}
