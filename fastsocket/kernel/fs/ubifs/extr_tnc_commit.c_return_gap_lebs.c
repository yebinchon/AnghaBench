
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubifs_info {int* gap_lebs; } ;


 int LPROPS_NC ;
 int LPROPS_TAKEN ;
 int dbg_cmt (char*) ;
 int kfree (int*) ;
 int ubifs_change_one_lp (struct ubifs_info*,int,int ,int ,int ,int ,int ) ;

__attribute__((used)) static int return_gap_lebs(struct ubifs_info *c)
{
 int *p, err;

 if (!c->gap_lebs)
  return 0;

 dbg_cmt("");
 for (p = c->gap_lebs; *p != -1; p++) {
  err = ubifs_change_one_lp(c, *p, LPROPS_NC, LPROPS_NC, 0,
       LPROPS_TAKEN, 0);
  if (err)
   return err;
 }

 kfree(c->gap_lebs);
 c->gap_lebs = ((void*)0);
 return 0;
}
