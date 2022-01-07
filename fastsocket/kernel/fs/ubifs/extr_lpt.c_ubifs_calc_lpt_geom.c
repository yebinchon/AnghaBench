
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubifs_info {int lpt_sz; scalar_t__ leb_size; int lpt_lebs; scalar_t__ ltab_sz; int big_lpt; int check_lpt_free; } ;


 int EINVAL ;
 int div_u64 (scalar_t__,scalar_t__) ;
 int do_calc_lpt_geom (struct ubifs_info*) ;
 int ubifs_err (char*) ;

int ubifs_calc_lpt_geom(struct ubifs_info *c)
{
 int lebs_needed;
 long long sz;

 do_calc_lpt_geom(c);


 sz = c->lpt_sz * 2;
 lebs_needed = div_u64(sz + c->leb_size - 1, c->leb_size);
 if (lebs_needed > c->lpt_lebs) {
  ubifs_err("too few LPT LEBs");
  return -EINVAL;
 }


 if (c->ltab_sz > c->leb_size) {
  ubifs_err("LPT ltab too big");
  return -EINVAL;
 }

 c->check_lpt_free = c->big_lpt;
 return 0;
}
